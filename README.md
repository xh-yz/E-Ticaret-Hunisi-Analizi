# E-Commerce Conversion Funnel Analysis (Funnel Analysis)

### Executive Summary: Identifying Critical Drop-off Points
This end-to-end analysis project maps the customer journey on an e-commerce platform, from initial site visit to final purchase. Its core objective is to identify critical drop-off points (stages where users leave) and provide data-driven recommendations to optimize the conversion funnel, targeting a potential conversion rate increase of up to 15%.

### ✨ Core Value: From Data to Actionable Insights
This project moves beyond simple reporting by answering the critical business question: **"Why are thousands of visitors not converting, and where exactly are we losing them?"** It replaces guesswork with clear, segment-specific insights for marketing and operational teams.

#### Key Deliverables:
*   **7-Step Conversion Funnel:** Visualizes user drop-off at each stage (Session Start → Purchase).
*   **Segmentation Analysis:** Deep dives into performance by Traffic Source, Device Category (Mobile/Desktop), and Campaign.
*   **Interactive Dashboard:** A single source of truth for real-time KPI monitoring and root cause analysis.
*   **Actionable Recommendations:** Specific A/B test proposals and UX audit suggestions based on findings.

### 🛠️ Tech Stack & Methodology
| Component | Tool / Method | Purpose |
| :--- | :--- | :--- |
| **Data Processing & Warehousing** | Google BigQuery | Handling large-scale event logs and creating complex SQL Views for funnel logic. |
| **Data Visualization & BI** | Looker Studio | Building an interactive dashboard for KPI reporting and exploration. |
| **Core Analytical Method** | End-to-End Funnel Analysis, Segmentation Analysis | Understanding user flow and identifying segment-specific bottlenecks. |

### 📊 Funnel Logic & Data Architecture
The analysis is built on a **7-Step Conversion Funnel** (GA4 events). Data preparation in BigQuery was structured via three key SQL Views:
1.  **`funnel_base_view`:** Unifies the 7 funnel stages using `UNION ALL`, providing the core user counts and conversion rates for the main funnel chart.
2.  **`segment_funnel_view`:** Extends the base funnel by adding dimensions (Traffic Source, Device, Campaign) to enable deep segmentation analysis.
3.  **`kpi_and_filter_view`:** Contains daily KPIs (Sales, Visits, Orders) and additional dimensions (OS, Language) for final dashboard filtering.

**The 7 Funnel Stages:** `session_start` → `view_item` → `add_to_cart` → `begin_checkout` → `add_shipping_info` → `add_payment_info` → `purchase`

### 🔍 Key Findings & Business Recommendations (Based on Mock Data)
*   **Critical Bottleneck:** A significant **65% drop-off** occurs between the **'View Item' and 'Add to Cart'** stages.
*   **Segment Insight:** **Mobile users** show a **30% lower 'Add to Cart' rate** compared to Desktop users.
*   **Recommended Action:**
    1.  Initiate **A/B Tests** focusing on the consistency and ergonomics of Call-to-Action (CTA) buttons across all devices, especially on mobile.
    2.  Conduct a dedicated **Mobile UX/UI Audit** to address the specific friction points for mobile shoppers.

---

## 🇹🇷 Türkçe

### 🛒 E-Ticaret Dönüşüm Hunisi Analizi (Funnel Analysis)
Bu proje, bir e-ticaret platformunun ziyaretçilerinin siteye ilk girişten nihai satın alma işlemine kadar olan yolculuğunu uçtan uca analiz etmeyi ve kayıp yaşanan kritik aşamaları (drop-off points) belirlemeyi amaçlamaktadır.

### 🎯 Proje Amacı ve Değeri
Mağazaya gelen binlerce ziyaretçinin neden satın alma yapmadığı sorununa veri odaklı bir çözüm getirmek ve hangi pazarlama/operasyonel kararların alınması gerektiği konusunda belirsizliği ortadan kaldırmaktır. Proje, potansiyel olarak **%15'e varan dönüşüm artışı** sağlayacak aksiyon adımları sunmuştur.

### 🛠️ Teknik Çözüm ve Kullanılan Araçlar
*   **Veri Kaynağı:** Simülasyon verisi (E-ticaret olay logları) kullanılarak oluşturulmuştur.
*   **Veri Manipülasyonu ve Dönüşüm:** **Google BigQuery** (Hacimli veri işleme ve karmaşık SQL View'ları oluşturma)
*   **Veri Görselleştirme:** **Looker Studio** (Etkileşimli gösterge paneli ve KPI raporlaması)
*   **Analiz Metodolojisi:** Uçtan Uca Dönüşüm Hunisi Analizi, Segmentasyon Analizi (Cihaz, Kaynak, Kampanya bazlı).

### 📊 Ana Metrikler (KPI'lar) ve Lojik
Bu proje, analizin temelini oluşturan **7 Aşamalı Dönüşüm Hunisi** lojiği üzerine kurulmuştur. Veri hazırlığı BigQuery'de üç ana SQL View (Görünüm) ile gerçekleştirilmiştir:

1.  **`funnel_base_view` (Temel Huni Metrikleri):** Huninin 7 ayrı adımını (`session_start`'tan `purchase`'a kadar) `UNION ALL` kullanarak tek bir sütunda birleştirir. Bu View, Looker Studio'daki huni grafiğinin kullanıcı sayılarını ve dönüşüm oranlarını hesaplamak için temel veriyi sağlar.
2.  **`segment_funnel_view` (Segmentasyon Verisi):** Temel huni lojiğini koruyarak; **Trafik Kaynağı, Cihaz Kategorisi (Mobil/Masaüstü) ve Kampanya** gibi boyutları (Dimension) ekler. Bu sayede, hangi kullanıcı segmentinin nerede takıldığının derinlemesine analizi yapılır.
3.  **`kpi_and_filter_view` (KPI ve Filtreler):** Satış, Ziyaret ve Sipariş gibi günlük KPI'ları ve cihaz dili, işletim sistemi gibi son filtreleme için gerekli ek boyutları içerir.

**7 Aşamalı Dönüşüm Hunisi Adımları (GA4 Events):**
`session_start` → `view_item` → `add_to_cart` → `begin_checkout` → `add_shipping_info` → `add_payment_info` → `purchase`

### 💡 Proje Bulguları ve İş Önerileri
*   **Kritik Kayıp Noktası:** Analizler, ziyaretçilerin **%65**'inin **'Ürün İnceleme' (view_item)** adımından **'Sepete Ekleme' (add_to_cart)** adımına geçişte büyük bir kayıp yaşandığını göstermiştir. (Mock Veri: %65 kullanıldı.)
*   **Segmentasyon Bulgusu:** Özellikle **Mobil cihaz** kullanıcılarının, masaüstüne göre **Sepete Ekleme oranının %30 daha düşük** olduğu tespit edilmiştir. (Mock Veri: %30 kullanıldı.)
*   **Öneri:**
    1.  Ana sayfadaki **Harekete Geçirici Çağrı (CTA) butonlarının** tüm cihazlarda (özellikle mobil) tutarlılığını ve ergonomisini test eden **A/B Testleri** başlatılması önerilmiştir.
    2.  Ayrıca, **mobil arayüz için özel bir UX denetimi** yapılması tavsiye edilmiştir.

Gösterge Paneli (Dashboard) Görünümü
https://lookerstudio.google.com/reporting/32caf8b1-7189-4eb0-8258-1db2ebc130b6
<img width="736" height="347" alt="E-Ticaret Hunisi" src="https://github.com/user-attachments/assets/02147bce-34d4-4c46-bee3-5b21ca7f0ef3" />
https://console.cloud.google.com/bigquery?ws=!1m7!1m6!12m5!1m3!1sultimate-balm-465012-b4!2sus-central1!3s0e58e23f-6857-4c39-bfde-c227e44111e3!2e1
