🛒 E-Ticaret Dönüşüm Hunisi Analizi (Funnel Analysis)

Bu proje, bir e-ticaret platformunun ziyaretçilerinin siteye ilk girişten nihai satın alma işlemine kadar olan yolculuğunu uçtan uca analiz etmeyi ve kayıp yaşanan kritik aşamaları (drop-off points) belirlemeyi amaçlamaktadır.

🎯 Proje Amacı ve Değeri

Mağazaya gelen binlerce ziyaretçinin neden satın alma yapmadığı sorununa veri odaklı bir çözüm getirmek ve hangi pazarlama/operasyonel kararların alınması gerektiği konusunda belirsizliği ortadan kaldırmaktır. Proje, potansiyel olarak %15'e varan dönüşüm artışı sağlayacak aksiyon adımları sunmuştur.

🛠️ Teknik Çözüm ve Kullanılan Araçlar

Veri Kaynağı: Simülasyon verisi (E-ticaret olay logları) kullanılarak oluşturulmuştur.

Veri Manipülasyonu ve Dönüşüm: Google BigQuery (Hacimli veri işleme ve karmaşık SQL View'ları oluşturma)

Veri Görselleştirme: Looker Studio (Etkileşimli gösterge paneli ve KPI raporlaması)

Canlı Dashboard'u İncelemek İçin Tıklayın

Analiz Metodolojisi: Uçtan Uca Dönüşüm Hunisi Analizi, Segmentasyon Analizi (Cihaz, Kaynak, Kampanya bazlı).

📊 Ana Metrikler (KPI'lar) ve Lojik

Bu proje, analizin temelini oluşturan 7 Aşamalı Dönüşüm Hunisi lojiği üzerine kurulmuştur. Veri hazırlığı BigQuery'de üç ana SQL View (Görünüm) ile gerçekleştirilmiştir:

funnel_base_view (Temel Huni Metrikleri): Huninin 7 ayrı adımını (session_start'tan purchase'a kadar) UNION ALL kullanarak tek bir sütunda birleştirir. Bu View, Looker Studio'daki huni grafiğinin kullanıcı sayılarını ve dönüşüm oranlarını hesaplamak için temel veriyi sağlar.

segment_funnel_view (Segmentasyon Verisi): Temel huni lojiğini koruyarak; Trafik Kaynağı, Cihaz Kategorisi (Mobil/Masaüstü) ve Kampanya gibi boyutları (Dimension) ekler. Bu sayede, hangi kullanıcı segmentinin nerede takıldığının derinlemesine analizi yapılır.

kpi_and_filter_view (KPI ve Filtreler): Satış, Ziyaret ve Sipariş gibi günlük KPI'ları ve cihaz dili, işletim sistemi gibi son filtreleme için gerekli ek boyutları içerir.

7 Aşamalı Dönüşüm Hunisi Adımları (GA4 Events):

session_start: Oturum başlangıcı

view_item: Ürün incelemesi

add_to_cart: Sepete ekleme

begin_checkout: Siparişe başlama

add_shipping_info: Teslimat bilgilerini ekleme

add_payment_info: Ödeme bilgilerini ekleme

purchase: Satın alma

💡 Proje Bulguları ve İş Önerileri

Kritik Kayıp Noktası: Analizler, ziyaretçilerin %65'inin 'Ürün İnceleme' adımından 'Sepete Ekleme' adımına geçişte büyük bir kayıp yaşandığını göstermiştir. (Mock Veri: %65 kullanıldı.)

Segmentasyon Bulgusu: Özellikle Mobil cihaz kullanıcılarının, masaüstüne göre Sepete Ekleme oranının %30 daha düşük olduğu tespit edilmiştir. (Mock Veri: %30 kullanıldı.)

Öneri: Ana sayfadaki Harekete Geçirici Çağrı (CTA) butonlarının tüm cihazlarda (özellikle mobil) tutarlılığını ve ergonomisini test eden A/B Testleri başlatılması önerilmiştir. Ayrıca, mobil arayüz için özel bir UX denetimi yapılması tavsiye edilmiştir.

Gösterge Paneli (Dashboard) Görünümü
https://lookerstudio.google.com/reporting/32caf8b1-7189-4eb0-8258-1db2ebc130b6
<img width="736" height="347" alt="E-Ticaret Hunisi" src="https://github.com/user-attachments/assets/02147bce-34d4-4c46-bee3-5b21ca7f0ef3" />
https://console.cloud.google.com/bigquery?ws=!1m7!1m6!12m5!1m3!1sultimate-balm-465012-b4!2sus-central1!3s0e58e23f-6857-4c39-bfde-c227e44111e3!2e1
