-- Adım 1: Sitede oturum başlangıcı
SELECT
  COUNT(DISTINCT user_pseudo_id) AS session_starts
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'session_start'
-- Adım 2: Ürün incelemesi
SELECT
  COUNT(DISTINCT user_pseudo_id) AS product_views
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'view_item'
  -- Adım 3: Sepete ürün ekleme
SELECT
  COUNT(DISTINCT user_pseudo_id) AS add_to_carts
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'add_to_cart'
  -- Adım 4: Siparişe başlama
SELECT
  COUNT(DISTINCT user_pseudo_id) AS begin_checkouts
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'begin_checkout'
  -- Adım 5: Teslimat bilgilerini ekleme
SELECT
  COUNT(DISTINCT user_pseudo_id) AS add_shipping_info
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'add_shipping_info'
  -- Adım 6: Ödeme bilgilerini ekleme
SELECT
  COUNT(DISTINCT user_pseudo_id) AS add_payment_info
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'add_payment_info'
  -- Adım 7: Satın alma
SELECT
  COUNT(DISTINCT user_pseudo_id) AS purchases
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'purchase'
  -- Birleşik Huni Sorgusu
-- Bu sorgu, tüm dönüşüm huni adımlarındaki kullanıcı sayılarını tek bir tabloda toplar.

SELECT
  'session_start' AS event_name,
  COUNT(DISTINCT user_pseudo_id) AS event_count
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'session_start'

UNION ALL

SELECT
  'view_item' AS event_name,
  COUNT(DISTINCT user_pseudo_id) AS event_count
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'view_item'

UNION ALL

SELECT
  'add_to_cart' AS event_name,
  COUNT(DISTINCT user_pseudo_id) AS event_count
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'add_to_cart'

UNION ALL

SELECT
  'begin_checkout' AS event_name,
  COUNT(DISTINCT user_pseudo_id) AS event_count
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'begin_checkout'

UNION ALL

SELECT
  'add_shipping_info' AS event_name,
  COUNT(DISTINCT user_pseudo_id) AS event_count
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'add_shipping_info'

UNION ALL

SELECT
  'add_payment_info' AS event_name,
  COUNT(DISTINCT user_pseudo_id) AS event_count
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'add_payment_info'

UNION ALL

SELECT
  'purchase' AS event_name,
  COUNT(DISTINCT user_pseudo_id) AS event_count
FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE
  event_name = 'purchase'