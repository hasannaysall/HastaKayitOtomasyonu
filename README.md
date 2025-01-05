# Hasta Kayıt Otomasyonu

**210260063 Hasan Aysal**  
**230260189 Ahmet Enes KIRANŞAL**

---

## Proje Tanımı

Proje, bir sağlık kuruluşu için hasta yönetimi ve tedavi sürecini takip etmeye yönelik bir veritabanı sistemidir. Sistem, hastalar, doktorlar, hemşireler, ilaçlar, hastalıklar, alerjiler, refakatçiler ve taburcu süreçleri ile ilgili bilgileri içerir.

---

## Kullanıcı Rolleri

| **Rol**       | **Açıklama**                                              |
|---------------|----------------------------------------------------------|
| **Hasta**     | Sağlık hizmetlerinden yararlanan birey.                   |
| **Doktor**    | Hastaların tedavi süreçlerini yöneten sağlık profesyoneli. |
| **Hemşire**   | Hastaların bakımını üstlenen sağlık personeli.            |
| **Refakatçi** | Hastaya destek sağlayan kişi.                             |
| **Yönetici**  | Veritabanını yöneten ve düzenlemeler yapan kişi.          |

---

## Varlıklar ve Nitelikleri

| **Varlık**     | **Nitelikler**                                                                 |
|----------------|-------------------------------------------------------------------------------|
| **Hasta**      | HastaID (PK), Ad, Soyad, HastalıkID, DoktorID, İlaçID, HemşireID, AlerjiID, RefakatçiID, GirişTarihi |
| **Doktor**     | DoktorID (PK), Ad, Soyad, Bölüm                                              |
| **Hastalık**   | HastalıkID (PK), HastalıkAdı, İlaçID                                         |
| **İlaç**       | İlaçID (PK), İlaçAdı, STT                                                   |
| **Refakatçi**  | RefakatçiID (PK), Ad, Soyad, Telefon                                        |
| **Alerji**     | AlerjiID (PK), AlerjiAdı                                                   |
| **Hemşire**    | HemşireID (PK), Ad, Soyad                                                  |
| **Taburcu**    | TaburcuID (PK), Çıkış Tarihi                                               |

---

## İlişkiler ve Kardinaliteler

| **İlişki**              | **Kardinalite**                        | **Açıklama**                                                                                       |
|-------------------------|----------------------------------------|---------------------------------------------------------------------------------------------------|
| **İlaç - Hastalık**     | N:M                                    | Bir ilaç, birden fazla hastalığın tedavisinde kullanılabilir. Bir hastalık da birden fazla ilaçla tedavi edilebilir. |
| **Hastalık - Hasta**    | N:M                                    | Bir hasta, birden fazla hastalığa sahip olabilir ve bir hastalık birden fazla hastada görülebilir. |
| **Refakatçi - Hasta**   | 1:1                                    | Her hasta, bir refakatçi ile ilişkilendirilebilir. Her refakatçi yalnızca bir hastaya hizmet eder. |
| **Alerji - Hasta**      | N:M                                    | Bir hasta, birden fazla alerjiye sahip olabilir. Bir alerji birden fazla hastada görülebilir.     |
| **Hasta - Doktor**      | N:M                                    | Bir hasta, birden fazla doktor tarafından tedavi edilebilir. Bir doktor, birden fazla hastayı tedavi edebilir. |
| **Hasta - Taburcu**     | 1:M                                    | Her hasta, bir kez taburcu işlemi olabilir. Taburcu işlemi birden fazla hasta için geçerli olabilir. |
| **Hasta - Hemşire**     | N:M                                    | Bir hasta, birden fazla hemşire tarafından bakım alabilir. Bir hemşire, birden fazla hastaya bakım yapabilir. |

---

## Gereksinimler

| **Kullanıcı** | **Gereksinimler**                                                                                       |
|---------------|--------------------------------------------------------------------------------------------------------|
| **Hasta**     | Sağlık bilgilerini görüntüleyebilir, tedavi sürecine dair bilgilere erişebilir, alerjileri ve mevcut hastalıkları hakkında bilgi alabilir. |
| **Doktor**    | Hastaların sağlık kayıtlarına erişebilir, ilaç ve tedavi önerilerinde bulunabilir, hastalıkların teşhisini yapabilir. |
| **Hemşire**   | Hastaların bakım bilgilerine erişebilir, ilaç uygulayabilir, hasta durumunu doktor ile paylaşabilir.     |
| **Refakatçi** | Hastanın durumunu takip edebilir, hastaya destek sağlayabilir.                                          |
| **Yönetici**  | Veritabanını yönetebilir ve güncelleyebilir, kullanıcı erişimlerini düzenleyebilir.                     |


E-R Diyagramı


![tablo](https://github.com/user-attachments/assets/4f4d0d6e-219d-442b-9305-d15c37790ff1)

[2_210260063_230260189.pdf](https://github.com/user-attachments/files/18311667/2_210260063_230260189.pdf)
