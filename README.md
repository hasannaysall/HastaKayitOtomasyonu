1. Proje Tanımı
 Proje, bir sağlık kuruluşu için hasta yönetimi ve tedavi sürecini takip etmeye yönelik bir veritabanı sistemidir. Sistem, hastalar, doktorlar, hemşireler, ilaçlar, hastalıklar, alerjiler, refakatçiler ve taburcu süreçleri ile ilgili bilgileri içerir.



3. Kullanıcı Rolleri
Hasta: Sağlık hizmetlerinden yararlanan birey.
Doktor: Hastaların tedavi süreçlerini yöneten sağlık profesyoneli.
Hemşire: Hastaların bakımını üstlenen sağlık personeli.
Refakatçi: Hastaya destek sağlayan kişi.
Yönetici: Veritabanını yöneten ve düzenlemeler yapan kişi.



4. Varlıklar ve Nitelikleri

-Hasta
HastaID (Primary Key)
Ad
Soyad
HastalıkID
DoktorID
İlaçID
HemşireID
AlerjiID
RefaktaciID
GirişTarihi

-Doktor
DoktorID (Primary Key)
Ad
Soyad
Bölüm


-Hastalık
HastalıkID (Primary Key)
HastalıkAdı
İlaçID

-İlaç
İlaçID (Primary Key)
İlaçAdı
STT

-Refakatçi
RefakatçiID (Primary Key)
Ad
Soyad
Telefon

-Alerji
AlerjiID (Primary Key)
AlerjiAdı


-Hemşire
HemşireID (Primary Key)
Ad
Soyad


-Taburcu
TaburcuID (Primary Key)
Çıkış Tarihi



5. İlişkiler ve Kardinaliteler
İlaç - Hastalık (N:M): Bir ilaç, birden fazla hastalığın tedavisinde kullanılabilir. Bir hastalık da birden fazla ilaçla tedavi edilebilir.
Hastalık - Hasta (N:M): Bir hasta, birden fazla hastalığa sahip olabilir ve bir hastalık birden fazla hastada görülebilir.
Refakatçi - Hasta (1:1): Her hasta, bir refakatçi ile ilişkilendirilebilir. Her refakatçi yalnızca bir hastaya hizmet eder.
Alerji - Hasta (N:M): Bir hasta, birden fazla alerjiye sahip olabilir. Bir alerji birden fazla hastada görülebilir.
Hasta - Doktor (N:M): Bir hasta, birden fazla doktor tarafından tedavi edilebilir. Bir doktor, birden fazla hastayı tedavi edebilir.
Hasta - Taburcu (1:M): Her hasta, birkez taburcu işlemi olabilir. Taburcu işlemi birden fazla hasta için geçerli olabilir.
Hasta - Hemşire (N:M): Bir hasta, birden fazla hemşire tarafından bakım alabilir. Bir hemşire, birden fazla hastaya bakım yapabilir.



6. Gereksinimler
Hasta Gereksinimleri:
Hasta, sağlık bilgilerini görüntüleyebilir.
Hasta, tedavi sürecine dair bilgilere erişebilir.
Hasta, alerjileri ve mevcut hastalıkları hakkında bilgi alabilir.

Doktor Gereksinimleri:
Doktor, hastaların sağlık kayıtlarına erişebilir.
Doktor, hastalara ilaç ve tedavi önerilerinde bulunabilir.
Doktor, hastalıkların teşhisini yapabilir.

Hemşire Gereksinimleri:
Hemşire, hastaların bakım bilgilerine erişebilir.
Hemşire, hastalara ilaç uygulayabilir.
Hemşire, hasta durumunu doktor ile paylaşabilir.

Refakatçi Gereksinimleri:
Refakatçi, hastanın durumunu takip edebilir.
Refakatçi, hastaya destek sağlayabilir.

Yönetici Gereksinimleri:
Yönetici, veritabanını yönetebilir ve güncelleyebilir.
Yönetici, kullanıcı erişimlerini düzenleyebilir.
