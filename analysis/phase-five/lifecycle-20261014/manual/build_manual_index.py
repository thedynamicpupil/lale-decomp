"""Read-only original/manual reference catalog. Ordinals below are catalog order, not game IDs."""
from pathlib import Path
import json,hashlib
p=Path(__file__).parent;exe=Path('lale/IST.EXE').read_bytes();pdf=Path('lale.pdf').read_bytes()
# Exact headings and four-column boxes visually read from retained PDF page renders.
rows=[
(25,'Pis',30,'Hasar','Direk-Tekil','Yanındakiler','Sıradan doğrudan hasar; İstanbullulara zayıf etki.'),
(25,'Üzüm',40,'Hasar','Direk-Tekil','Yanındakiler','Doğrudan hasar veren söz.'),
(25,'Anten',40,'Zayıflatıcı','Direk-Tekil','Kısa','Hedefin vuruş olasılığını azaltma.'),
(25,'Kelle',40,'Zayıflatıcı','Direk-Tekil','Kısa','Hedefin kurtulma ihtimalini azaltma.'),
(26,'Sen Bir Ceviz Ağacısın',50,'Özel','Tekil','Kısa','Hedefi durdurma; bazı şartlarla çözülme.'),
(26,'Uyu da büyü, hırbo !',50,'Özel','Tekil','Kısa','Uyutma; söyleyen ölünce kendiliğinden geçmediği anlatılır.'),
(26,'Lale!',60,'Hasar','Direk-Tekil','Uzun','Doğrudan hasar.'),
(26,'Sus, ağzına biber sürerim!',60,'Özel','Direk-Tekil','Orta','Geçici susturma/vecize söyleyememe.'),
(26,'Gel Babana',70,'Özel','Direk-Tekil','Orta','Hedefin taraf değiştirmesi.'),
(26,'Aslan Gibisin Maşallah...',90,'Koruma','Direk-Tekil','Yanındaki','Vurma ve hasara +1 bonus anlatılır; yalnızca manual iddiası.'),
(26,'Allah Nazardan Saklasın',100,'Koruma','Direk-Tekil','Yanındaki','Silah ve vecizelerden kurtulmaya +1 bonus anlatılır; yalnızca manual iddiası.'),
(26,'Önüm Arkam Sağım Solum Sobe...',120,'Hasar','Çoğul','Yanındaki','Birden fazla hedefe hasar.'),
(27,'Allah Belanızı Versin!',150,'Özel','Dar Alan','Orta','Kafa karışması ve hareket edememe.'),
(27,'Kalın Kafalı!',150,'Koruyucu','Direk-Tekil','Kısa','Sonraki vecizelere dayanıklılık.'),
(27,'Dokunmayın Şabanıma',150,'Koruyucu','Direk-Tekil','Yanındaki','Saldırana karşı koruma; refleks vuruşlarına etkisiz olduğu anlatılır.'),
(27,'Takıl Yaa, Boşver...',190,'Özel','Direk-Tekil','Kısa','Önceden söylenmiş vecizelerin kalıcı etkilerini giderme.'),
(27,'Allah Sizi Bildiği Gibi Yapsın.',200,'Özel','Geniş Alan','Orta','Manuel tam etkiyi açıklamadığını açıkça belirtir.'),
(27,'Piştoğli!',200,'Hasar','Direk-Tekil','Yanındaki','Korkutma ile hasar; anekdotsal40–50 ifadesi algoritma değildir.'),
(28,'Bi Korsun, Bi de Yer Kor',200,'Koruyucu','Direk-Tekil','Yanındaki','Vurana benzer hasarla karşılık verme koruması.'),
(28,'Hasta mısın Oolum sen ?',200,'Özel','Tekil','Orta','Hedefi yorma/bitkinleştirme.'),
(28,'Körolasıca...',200,'Özel','Tekil','Orta','Geçici körlük, vuruş ve kurtulma ihtimallerini azaltma.'),
(28,'Böh!!!',220,'Özel','Tekil','Orta','Korku ile donakalma.'),
(28,'Ben Anlamam!',250,'Koruyucu','Tekil','Kendisine','Düşük nitelikli vecizelerden etkilenmeme.'),
(28,'Gıpraşmayın!',250,'Özel','Dar Alan','Orta','Bir grubun hareketini durdurma.'),
(28,'Bana mı Dedin ?...',250,'Koruyucu','Direk','Kendisi','Vecize hasarını geri alma/verme olasılıkları; sayısal kural verilmez.'),
(28,'Zıkkımın Kökünü Ye!',250,'Özel','Direk','Kısa','Hedefin laleliğine bağlı ölüm anlatımı.'),
(28,'Lan Hipinelaar',300,'Hasar','Geniş Alan','Orta','Geniş alanda hasar.'),
(29,'Koşun Lan, Koşuun...',300,'Özel','Dar Alan','Kısa','Hareket hakkını artırma; kesin çarpan verilmez.'),
(29,'Şerefsizleeer!!!',300,'Hasar','Çizgisel','Kısa','Aradaki dostları da etkileyebilen çizgisel hasar.'),
(29,'De Get !',380,'Özel','Direk','Orta','Yeterince yüzsüz olmayan hedefi uzaklaştırma.'),
(29,'Iaaarghh...',400,'Koruma','Direk-Tekil','Yanındakine','Geçici duyamama ile vecize etkilerinden korunma.'),
(29,'Sena Dur!',440,'Özel','Direk-Tekil','Orta','Sözü anlayacak zekaya sahip hedefin durması.'),
(29,'Sena Öl!',500,'Özel','Direk','Orta','Ölüm etkisi.'),
(29,'Susun Laaan !!',500,'Özel','Bütün alan','Üç?!','Geniş susturma; yüzsüzlüğe bağlı başarı anlatımı.')]
assert len(rows)==34
catalog=[]
for i,(page,name,damak,typ,shape,rng,effect)in enumerate(rows):
 off=0x19580+i*31;raw=exe[off:off+31];word=raw.split(b'\0',1)[0];assert len(raw)==31 and b'\0'in raw and not any(raw[len(word):])
 catalog.append(dict(manual_catalog_ordinal=i+1,NOT_A_RUNTIME_ID=True,pdf_page=page,manual_spelling=name,manual_damak=damak,manual_category=typ,manual_shape=shape,manual_range=rng,manual_effect_summary=effect,manual_status='MANUAL-DOCUMENTED; page image visually inspected',binary_literal_status='BINARY-VERIFIED literal bytes and observed31-byte padding; semantic ID/handler unverified',binary_file_offset=off,binary_ds_offset=off-0x19200,binary_cell_bytes_hex=raw.hex(),binary_literal_cp857=word.decode('cp857'),runtime_id=None,consumer_function=None,rust_effect_implemented=False,dos_runtime_observed=False))
(p/'vecize-catalog-34.json').write_text(json.dumps({'source_manual_sha256':hashlib.sha256(pdf).hexdigest(),'source_ist_sha256':hashlib.sha256(exe).hexdigest(),'page_numbering':'PDF pages1-based, not inferred booklet pagination','warning':'Manual order and observed text-cell index are not runtime IDs. Costs/effects are not executable-verified.', 'entries':catalog},ensure_ascii=False,indent=2)+'\n')
items=[
('Zopa',20,'İki el; iki ellilere göre hızlı, ağır; köpekler dahil hayvanlara etkili.'),('Sivri Daş',20,'Tek el; hafif/hızlı/düşük hasar; fırlatılınca hasar vermediği, irospalara karşı kullanıldığı anlatılır.'),('Kısa Zopa',20,'Tek el; orta hasar; magandalara karşı etkili.'),('Lale',20,'Tek el; hızlı/hafif/iyi hasar; yarı yobaz fanatiklere karşı.'),('Şişe',20,'Tek el; orta hasar; özel üstünlük belirtilmez.'),('Levye',20,'Tek el; ağır kullanım, güçlü hasar; yarı yobaz çember sakallılara karşı.'),('Levrek',21,'İki el; ağır/yavaş; irospa ırkına karşı.'),('Cetvel',21,'Tek el; hızlı/hafif; öğrencilere karşı, öğretmenlere önerilir.'),('T-Cetveli',21,'İki el; ağır/yavaş/yüksek hasar; öğretmenlere karşı.'),('Mezura',21,'Hızlı/orta hasar; hırsızlara karşı kullanım anlatılır.'),('Galvanometre',21,'Çok yavaş/orta hasar; yobazlara karşı.'),('Terlik',21,'Tek el; hafif/hızlı/orta hasar; uzman iki terlik kullanabilir; köpeklere karşı etkili.'),('Baçemak',21,'İki el; ağır/yavaş/yüksek hasar; bahçıvanlara karşı.'),('Kırık şişe',21,'Hızlı/güçlü; magandalara karşı.'),('Tornavida',21,'Tek el; hızlı/orta hasar; konsoloslara karşı.'),('Yıldız tornavida',21,'Tek el; orta hız; kafafatmalara karşı.'),('İngiliz anahtarı',21,'Tek el; orta hız/iyi hasar; Napoliten yobaza karşı.'),('Fransız anahtarı',22,'Tek el; orta hız/hasar; Beşamel yobazlara karşı.'),('Kazma',22,'İki el; çok yavaş.'),('Çatal',22,'Tek el; hızlı; örümceğe karşı.'),('Daş',22,'Uzak menzilli atma; iki el; gömlek/etekten kullanılır; lavuklara karşı.'),('Tüftüf',22,'Siliconian uzmanlığı; köpeklere karşı geliştirilmiş; uzak atış, iyi hasar, yavaş.'),('Sapan',22,'İki el; orta üstü menzil/hasar, yavaş.'),('Tebeşir',22,'İki el; çok hızlı; öğrencilere karşı.'),('Fıstık',23,'Uzak menzilli; bazı hayvanları yemeğe yönelterek geçici etkisiz kılma.')]
itemdata=[]
for i,(name,page,effect)in enumerate(items):
 off=0x19ef1+15*i;raw=exe[off:off+15];assert b'\0'in raw
 itemdata.append(dict(manual_spelling=name,pdf_page=page,manual_claim=effect,binary_literal_offset=off,binary_ds_offset=off-0x19200,binary_literal_cp857=raw.split(b'\0')[0].decode('cp857'),binary_cell_hex=raw.hex(),observed_cell_ordinal_not_id=i,runtime_item_id=None,status='MANUAL-DOCUMENTED properties; BINARY-VERIFIED name bytes only; no handler/ID match',dos_runtime_observed=False,rust_mechanic_implemented=False))
(p/'item-name-cross-reference.json').write_text(json.dumps({'source_manual_sha256':hashlib.sha256(pdf).hexdigest(),'source_ist_sha256':hashlib.sha256(exe).hexdigest(),'observed_name_cell_stride':15,'warning':'Text ordinal is not item ID. Numeric/equipment properties still require consumers.', 'entries':itemdata,'additional_unmatched_literal':{'offset':0x1a068,'raw_hex':exe[0x1a068:0x1a077].hex(),'cp857':exe[0x1a068:0x1a077].split(b'\0')[0].decode('cp857'),'note':'No corresponding heading found in reviewed manual weapon pages; do not invent effects.'}},ensure_ascii=False,indent=2)+'\n')
(p/'VECIZE_CATALOG.md').write_text('#34 vecizeler: manual catalog and binary literal index\n\nAll pages below were directly rendered/visually inspected. Field spellings are retained; typographic quote marks are omitted. Repeated letters and punctuation can differ from executable literals. Manual catalog ordinal is **not** a runtime ID. All costs/categories/targets/effects remain MANUAL-DOCUMENTED; names/offsets are BINARY-VERIFIED literal bytes only. No gameplay effects or runtime IDs are assigned. See JSON for raw31-byte cells and concise narrative effect summaries.\n\n|Manual ordinal|PDF page|Manual spelling|Damak|Türü|Şekil|Menzil|Original IST literal offset|Binary literal (CP857)|\n|---|---|---|---|---|---|---|---|---|\n'+''.join(f'|{r["manual_catalog_ordinal"]}|{r["pdf_page"]}|{r["manual_spelling"]}|{r["manual_damak"]}|{r["manual_category"]}|{r["manual_shape"]}|{r["manual_range"]}|0x{r["binary_file_offset"]:x}|{r["binary_literal_cp857"]}|\n'for r in catalog)+'\nThe entire observed literal block is34×31=1054 bytes, physical0x19580..0x1999d inclusive. This establishes a text-layout observation, not numeric vecize record layout or dispatch numbering. CP857 is used only as a readable rendering alongside preserved bytes; native font encoding remains authoritative.\n')
print('34vecize rows and25manual weapon-name matches written; no IDs assigned.')
