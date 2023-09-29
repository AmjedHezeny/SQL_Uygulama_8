# 🕰️ SQL ile Sipariş Teslim Süreleri ve KDV Hesaplamaları📊

* 1.) 📊 Kargo Şirketlerinin Toplam Ciroları
   - Amaç: Verilen siparişlerin kargo şirketlerine göre toplam ciro değerlerini hesaplamak.
   - Kullanılan Metod: SUM fonksiyonu ile siparişlerin birim fiyatları ve miktarları çarpılarak toplam ciro bulunur.

* 2.) 🕰️ Sipariş Teslim Süreleri
   - Amaç: Siparişlerin teslim edilme sürelerini belirlemek ve listelemek.
   - Kullanılan Metod: DATEDIFF fonksiyonu ile siparişin gönderilme ve verilme tarihleri arasındaki fark hesaplanır.
      
* 3.) 📉 Ortalama Teslim Süresi
   - Amaç: Tüm siparişlerin ortalama teslim süresini bulmak.
   - Kullanılan Metod: DATEDIFF fonksiyonu ile teslim süreleri hesaplanır ve AVG fonksiyonu ile ortalama alınır.

* 4.) 👥 Sipariş Vermeyen Müşteriler
   - Amaç: Sipariş vermeyen müşterileri belirlemek.
   - Kullanılan Metod: Alt sorgu ile müşterilerin siparişlerini kontrol ederek, sipariş vermeyen müşterileri listeler.

* 5.) 💰 KDV Hesaplama Fonksiyonu
   - Amaç: Verilen bir fiyata göre KDV tutarını hesaplamak.
   - Kullanılan Metod: Basit bir matematiksel işlem ile KDV hesaplanır.
     
* 6.) 🛒 Ürünler ve KDV
   - Amaç: Ürünlerin isimlerini, birim fiyatlarını ve KDV tutarlarını listelemek.
   - Kullanılan Metod: Ürünlerin birim fiyatları ile KDV oranının çarpılması sonucu KDV tutarı hesaplanır.

* 7.) 💼 KDV Dahil Toplam Fiyat Hesaplama Fonksiyonu
   - Amaç: Verilen bir fiyata göre KDV dahil toplam tutarı hesaplamak.
   - Kullanılan Metod: Basit bir matematiksel işlem ile KDV dahil toplam tutar hesaplanır.

* 8.) 🛒 Ürünler ve KDV Dahil Tutarlar
   - Amaç: Ürünlerin isimlerini, birim fiyatlarını, KDV tutarlarını ve KDV dahil toplam tutarlarını listelemek.
   - Kullanılan Metod: Ürünlerin birim fiyatları ile KDV oranının çarpılması sonucu KDV tutarı ve KDV dahil toplam tutar hesaplanır.






