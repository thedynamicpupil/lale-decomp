//! Recovered conditional no-audio counter model, formerly in native presentation.
//! PIT base11931,phaseffff,stepffff. Audio registrations may change the base;
//! this does not emulate CPU latency or VGA retrace.
use std::time::Duration;
pub fn dos_counter(elapsed: Duration) -> u32 {
    let irq = elapsed.as_nanos() * 1_193_182 / (11_931 * 1_000_000_000u128);
    let callbacks = (65535 + irq * 65535) / 65536;
    (callbacks * 10) as u32
}
