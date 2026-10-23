//! Minimal Linux x86_64 SDL2 presentation adapter for a 320x200 research buffer.
//! No audio or game timing. ARGB8888 means integer pixels 0xAARRGGBB.
//!
//! ABI references (SDL2 upstream; small declarations below, not generated bindings):
//! https://github.com/libsdl-org/SDL/blob/SDL2/include/SDL_events.h
//! https://github.com/libsdl-org/SDL/blob/SDL2/include/SDL_keyboard.h
//! https://github.com/libsdl-org/SDL/blob/SDL2/include/SDL_pixels.h
//! https://wiki.libsdl.org/SDL2/SDL_GetRendererOutputSize
//! https://wiki.libsdl.org/SDL2/SDL_SetTextureScaleMode
//! The SDL_Event union is 56 bytes/alignment8 on this supported target.
//! SDL_TextInputEvent is 44 bytes: three Uint32 fields followed by char text[32].
//! Its UTF-8 payload is bounded and converted here; original CP857 mapping is
//! the caller's responsibility. Text input is enabled only during name editing.

#[cfg(not(all(target_os = "linux", target_arch = "x86_64")))]
compile_error!("The SDL2 research adapter currently supports Linux x86_64 only");

use std::ffi::{c_char, c_int, c_void, CStr, CString};
use std::marker::PhantomData;
use std::ptr;
use std::rc::Rc;
use std::sync::atomic::{AtomicBool, Ordering};

const VIDEO: u32 = 0x20;
const ARGB8888: u32 = 0x16362004;
static WINDOW_ACTIVE: AtomicBool = AtomicBool::new(false);

// Linux libc: the process leader's TID equals the PID. SDL video/poll/present
// must stay on the main thread; the !Send marker then keeps ownership there.
extern "C" {
    fn gettid() -> c_int;
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub enum Input {
    Quit,
    Key(i32),
    Text(String),
    Motion(i32, i32),
    /// Left button down, in logical framebuffer coordinates.
    Click(i32, i32),
    RightClick(i32, i32),
}

#[repr(C)]
#[derive(Clone, Copy)]
struct Rect {
    x: c_int,
    y: c_int,
    w: c_int,
    h: c_int,
}
#[repr(C)]
#[derive(Clone, Copy)]
struct Keysym {
    scancode: i32,
    sym: i32,
    modifiers: u16,
    unused: u32,
}
#[repr(C)]
#[derive(Clone, Copy)]
struct KeyEvent {
    kind: u32,
    timestamp: u32,
    window_id: u32,
    state: u8,
    repeat: u8,
    padding: [u8; 2],
    keysym: Keysym,
}
#[repr(C)]
#[derive(Clone, Copy)]
struct TextInputEvent {
    kind: u32,
    timestamp: u32,
    window_id: u32,
    text: [u8; 32],
}
#[repr(C)]
#[derive(Clone, Copy)]
struct MotionEvent {
    kind: u32,
    timestamp: u32,
    window_id: u32,
    which: u32,
    state: u32,
    x: i32,
    y: i32,
    xrel: i32,
    yrel: i32,
}
#[repr(C)]
#[derive(Clone, Copy)]
struct ButtonEvent {
    kind: u32,
    timestamp: u32,
    window_id: u32,
    which: u32,
    button: u8,
    state: u8,
    clicks: u8,
    padding: u8,
    x: i32,
    y: i32,
}
#[repr(C)]
#[derive(Clone, Copy)]
struct WindowEvent {
    kind: u32,
    timestamp: u32,
    window_id: u32,
    event: u8,
    padding: [u8; 3],
    data1: i32,
    data2: i32,
}
#[repr(C)]
#[derive(Clone, Copy)]
struct DropEvent {
    kind: u32,
    timestamp: u32,
    file: *mut c_char,
    window_id: u32,
}
#[repr(C)]
#[derive(Clone, Copy)]
struct EditingExtEvent {
    kind: u32,
    timestamp: u32,
    window_id: u32,
    text: *mut c_char,
    start: i32,
    length: i32,
}
#[repr(C, align(8))]
union Event {
    kind: u32,
    key: KeyEvent,
    text: TextInputEvent,
    motion: MotionEvent,
    button: ButtonEvent,
    window: WindowEvent,
    drop_data: DropEvent,
    editing_ext: EditingExtEvent,
    padding: [u8; 56],
}
const _: () = assert!(std::mem::size_of::<Event>() == 56);
const _: () = assert!(std::mem::align_of::<Event>() == 8);
const _: () = assert!(std::mem::size_of::<Keysym>() == 16);
const _: () = assert!(std::mem::size_of::<KeyEvent>() == 32);
const _: () = assert!(std::mem::size_of::<TextInputEvent>() == 44);
const _: () = assert!(std::mem::size_of::<MotionEvent>() == 36);
const _: () = assert!(std::mem::size_of::<ButtonEvent>() == 28);

#[link(name = "libSDL2-2.0.so.0", kind = "dylib", modifiers = "+verbatim")]
extern "C" {
    fn SDL_InitSubSystem(flags: u32) -> c_int;
    fn SDL_PushEvent(event: *mut Event) -> c_int;
    fn SDL_QuitSubSystem(flags: u32);
    fn SDL_GetError() -> *const c_char;
    fn SDL_CreateWindow(
        title: *const c_char,
        x: c_int,
        y: c_int,
        w: c_int,
        h: c_int,
        flags: u32,
    ) -> *mut c_void;
    fn SDL_DestroyWindow(window: *mut c_void);
    fn SDL_GetWindowID(window: *mut c_void) -> u32;
    fn SDL_SetWindowTitle(window: *mut c_void, title: *const c_char);
    fn SDL_GetWindowSize(window: *mut c_void, w: *mut c_int, h: *mut c_int);
    fn SDL_CreateRenderer(window: *mut c_void, index: c_int, flags: u32) -> *mut c_void;
    fn SDL_DestroyRenderer(renderer: *mut c_void);
    fn SDL_GetRendererOutputSize(renderer: *mut c_void, w: *mut c_int, h: *mut c_int) -> c_int;
    fn SDL_CreateTexture(
        renderer: *mut c_void,
        format: u32,
        access: c_int,
        w: c_int,
        h: c_int,
    ) -> *mut c_void;
    fn SDL_DestroyTexture(texture: *mut c_void);
    fn SDL_SetTextureScaleMode(texture: *mut c_void, scale_mode: c_int) -> c_int;
    fn SDL_SetTextureBlendMode(texture: *mut c_void, blend_mode: c_int) -> c_int;
    fn SDL_UpdateTexture(
        texture: *mut c_void,
        rect: *const Rect,
        pixels: *const c_void,
        pitch: c_int,
    ) -> c_int;
    fn SDL_SetRenderDrawColor(renderer: *mut c_void, r: u8, g: u8, b: u8, a: u8) -> c_int;
    fn SDL_RenderClear(renderer: *mut c_void) -> c_int;
    fn SDL_RenderCopy(
        renderer: *mut c_void,
        texture: *mut c_void,
        source: *const Rect,
        destination: *const Rect,
    ) -> c_int;
    fn SDL_RenderPresent(renderer: *mut c_void);
    fn SDL_PollEvent(event: *mut Event) -> c_int;
    fn SDL_StartTextInput();
    fn SDL_StopTextInput();
    fn SDL_free(memory: *mut c_void);
}

fn last_error(operation: &str) -> String {
    // SAFETY: SDL_GetError returns an SDL-owned NUL-terminated string.
    let message = unsafe {
        let text = SDL_GetError();
        if text.is_null() {
            "unknown SDL error".into()
        } else {
            CStr::from_ptr(text).to_string_lossy().into_owned()
        }
    };
    format!("{operation}: {message}")
}

/// Owns the only adapter window. Construct/use/drop on the application's main
/// thread; !Send/!Sync prevent transferring SDL resources between threads.
pub struct Window {
    window: *mut c_void,
    renderer: *mut c_void,
    texture: *mut c_void,
    video_initialized: bool,
    text_input_enabled: bool,
    square_pixels: bool,
    id: u32,
    _main_thread: PhantomData<Rc<()>>,
}

impl Window {
    pub fn new(title: &str, square_pixels: bool) -> Result<Self, String> {
        // SAFETY: gettid takes no arguments and returns the current Linux TID.
        if unsafe { gettid() } as u32 != std::process::id() {
            return Err("create the SDL research window on the process main thread".into());
        }
        let title =
            CString::new(title).map_err(|_| "window title contains a NUL byte".to_owned())?;
        if WINDOW_ACTIVE
            .compare_exchange(false, true, Ordering::AcqRel, Ordering::Acquire)
            .is_err()
        {
            return Err("the research SDL adapter supports one active window".into());
        }
        let mut result = Self {
            window: ptr::null_mut(),
            renderer: ptr::null_mut(),
            texture: ptr::null_mut(),
            video_initialized: false,
            text_input_enabled: false,
            square_pixels,
            id: 0,
            _main_thread: PhantomData,
        };
        // SAFETY: all SDL-owned handles start null and are destroyed in reverse
        // ownership order by Drop, including early constructor error returns.
        unsafe {
            if SDL_InitSubSystem(VIDEO) != 0 {
                return Err(last_error("initialize SDL video"));
            }
            result.video_initialized = true;
            // Desktop SDL enables text input by default. This harness enables
            // it explicitly only for caller-controlled name editing.
            SDL_StopTextInput();
            // SHOWN | RESIZABLE; deliberately omit ALLOW_HIGHDPI.
            result.window = SDL_CreateWindow(
                title.as_ptr(),
                0x2fff0000,
                0x2fff0000,
                960,
                if square_pixels { 600 } else { 720 },
                0x4 | 0x20,
            );
            if result.window.is_null() {
                return Err(last_error("create window"));
            }
            result.id = SDL_GetWindowID(result.window);
            result.renderer = SDL_CreateRenderer(result.window, -1, 0);
            if result.renderer.is_null() {
                return Err(last_error("create renderer"));
            }
            result.texture = SDL_CreateTexture(result.renderer, ARGB8888, 1, 320, 200);
            if result.texture.is_null() {
                return Err(last_error("create framebuffer texture"));
            }
            if SDL_SetTextureScaleMode(result.texture, 0) != 0 {
                return Err(last_error("select nearest texture sampling"));
            }
            if SDL_SetTextureBlendMode(result.texture, 0) != 0 {
                return Err(last_error("disable texture blending"));
            }
        }
        Ok(result)
    }

    pub fn title(&mut self, title: &str) -> Result<(), String> {
        let title = CString::new(title).map_err(|_| "window title contains a NUL byte")?;
        // SAFETY: live owned window; SDL copies the NUL-terminated title.
        unsafe { SDL_SetWindowTitle(self.window, title.as_ptr()) };
        Ok(())
    }

    fn geometry(&self) -> Result<(Rect, i32, i32, i32, i32), String> {
        let (mut window_w, mut window_h, mut output_w, mut output_h) = (0, 0, 0, 0);
        // SAFETY: live handles owned by self and valid writable integer outputs.
        unsafe {
            SDL_GetWindowSize(self.window, &mut window_w, &mut window_h);
            if SDL_GetRendererOutputSize(self.renderer, &mut output_w, &mut output_h) != 0 {
                return Err(last_error("query renderer dimensions"));
            }
        }
        if window_w <= 0 || window_h <= 0 || output_w <= 0 || output_h <= 0 {
            return Err("window/renderer dimensions are zero (possibly minimized)".into());
        }
        let (aspect_w, aspect_h) = if self.square_pixels {
            (8i64, 5i64)
        } else {
            (4, 3)
        };
        let (w, h) = if i64::from(output_w) * aspect_h <= i64::from(output_h) * aspect_w {
            (
                output_w,
                (i64::from(output_w) * aspect_h / aspect_w).max(1) as i32,
            )
        } else {
            (
                (i64::from(output_h) * aspect_w / aspect_h).max(1) as i32,
                output_h,
            )
        };
        Ok((
            Rect {
                x: (output_w - w) / 2,
                y: (output_h - h) / 2,
                w,
                h,
            },
            window_w,
            window_h,
            output_w,
            output_h,
        ))
    }

    fn logical_mouse(&self, x: i32, y: i32) -> Option<(i32, i32)> {
        let (rect, ww, wh, ow, oh) = self.geometry().ok()?;
        if x < 0 || y < 0 || x >= ww || y >= wh {
            return None;
        }
        // Keep rational window-to-output conversion until the final division;
        // this also handles a backend whose output differs despite no HiDPI flag.
        let x_num = i64::from(x) * i64::from(ow) - i64::from(rect.x) * i64::from(ww);
        let y_num = i64::from(y) * i64::from(oh) - i64::from(rect.y) * i64::from(wh);
        let x_den = i64::from(rect.w) * i64::from(ww);
        let y_den = i64::from(rect.h) * i64::from(wh);
        if x_num < 0 || y_num < 0 || x_num >= x_den || y_num >= y_den {
            return None;
        }
        // Widen before multiplication so mapping remains exact even for extreme
        // C-int window dimensions. In-range checks guarantee logical bounds.
        Some((
            (i128::from(x_num) * 320 / i128::from(x_den)) as i32,
            (i128::from(y_num) * 200 / i128::from(y_den)) as i32,
        ))
    }

    /// Enable UTF-8 text events for name editing; key events remain available
    /// for navigation, Backspace, Enter and Escape. No character encoding or
    /// original-game length policy is imposed by this platform boundary.
    pub fn text_input(&mut self, enabled: bool) {
        if enabled == self.text_input_enabled {
            return;
        }
        // SAFETY: the video subsystem is live and this !Send owner stays on
        // the main thread. The single-window harness owns this input mode.
        unsafe {
            if enabled {
                SDL_StartTextInput();
            } else {
                SDL_StopTextInput();
            }
        }
        self.text_input_enabled = enabled;
    }

    /// Explicit integration-test event; never called by ordinary gameplay.
    #[allow(dead_code)]
    pub fn diagnostic_key(&mut self, key: i32) -> Result<(), String> {
        let mut event = Event { padding: [0; 56] };
        event.key = KeyEvent {
            kind: 0x300,
            timestamp: 0,
            window_id: self.id,
            state: 1,
            repeat: 0,
            padding: [0; 2],
            keysym: Keysym {
                scancode: 0,
                sym: key,
                modifiers: 0,
                unused: 0,
            },
        };
        // SDL copies this fully initialized, correctly aligned event.
        if unsafe { SDL_PushEvent(&mut event) } != 1 {
            return Err("SDL test key rejected".into());
        }
        Ok(())
    }
    pub fn poll(&mut self) -> Vec<Input> {
        let mut inputs = Vec::new();
        let mut event = Event { padding: [0; 56] };
        // SAFETY: the correctly sized/aligned union is initialized. Read only
        // the C field selected by SDL's event tag. All values are plain integers
        // or C pointers, not Rust enums/references with restricted bit patterns.
        unsafe {
            while SDL_PollEvent(&mut event) > 0 {
                match event.kind {
                    0x100 => inputs.push(Input::Quit),
                    0x200 => {
                        let e = event.window;
                        if e.window_id == self.id && e.event == 14 {
                            inputs.push(Input::Quit);
                        }
                    }
                    0x300 => {
                        let e = event.key;
                        if e.window_id == self.id {
                            inputs.push(Input::Key(e.keysym.sym));
                        }
                    }
                    0x303 => {
                        let e = event.text;
                        if e.window_id == self.id && self.text_input_enabled {
                            let length = e.text.iter().position(|&byte| byte == 0).unwrap_or(32);
                            if let Ok(text) = std::str::from_utf8(&e.text[..length]) {
                                if !text.is_empty() {
                                    inputs.push(Input::Text(text.to_owned()));
                                }
                            }
                        }
                    }
                    0x400 => {
                        let e = event.motion;
                        if e.window_id == self.id {
                            if let Some((x, y)) = self.logical_mouse(e.x, e.y) {
                                inputs.push(Input::Motion(x, y));
                            }
                        }
                    }
                    0x401 => {
                        let e = event.button;
                        if e.window_id == self.id && (e.button == 1 || e.button == 3) {
                            if let Some((x, y)) = self.logical_mouse(e.x, e.y) {
                                inputs.push(if e.button == 1 {
                                    Input::Click(x, y)
                                } else {
                                    Input::RightClick(x, y)
                                });
                            }
                        }
                    }
                    // SDL allocates these ignored payloads for the receiver.
                    0x1000 | 0x1001 => SDL_free(event.drop_data.file.cast()),
                    0x305 => SDL_free(event.editing_ext.text.cast()),
                    _ => {}
                }
            }
        }
        inputs
    }

    pub fn present(&mut self, pixels: &[u32]) -> Result<(), String> {
        if pixels.len() != 320 * 200 {
            return Err("framebuffer must contain exactly 320x200 ARGB8888 pixels".into());
        }
        let (destination, ..) = self.geometry()?;
        // SAFETY: exact framebuffer length/pitch validated before SDL reads it;
        // live renderer/texture, full-source copy and stack-owned destination.
        unsafe {
            if SDL_UpdateTexture(self.texture, ptr::null(), pixels.as_ptr().cast(), 320 * 4) != 0 {
                return Err(last_error("upload framebuffer"));
            }
            if SDL_SetRenderDrawColor(self.renderer, 0, 0, 0, 255) != 0 {
                return Err(last_error("set letterbox color"));
            }
            if SDL_RenderClear(self.renderer) != 0 {
                return Err(last_error("clear renderer"));
            }
            if SDL_RenderCopy(self.renderer, self.texture, ptr::null(), &destination) != 0 {
                return Err(last_error("copy framebuffer"));
            }
            SDL_RenderPresent(self.renderer);
        }
        Ok(())
    }
}

impl Drop for Window {
    fn drop(&mut self) {
        // SAFETY: this instance uniquely owns handles and its video-subsystem
        // reference. Destroy children first; nulls cover partial construction.
        unsafe {
            if self.text_input_enabled {
                SDL_StopTextInput();
            }
            if !self.texture.is_null() {
                SDL_DestroyTexture(self.texture);
            }
            if !self.renderer.is_null() {
                SDL_DestroyRenderer(self.renderer);
            }
            if !self.window.is_null() {
                SDL_DestroyWindow(self.window);
            }
            if self.video_initialized {
                SDL_QuitSubSystem(VIDEO);
            }
        }
        WINDOW_ACTIVE.store(false, Ordering::Release);
    }
}
