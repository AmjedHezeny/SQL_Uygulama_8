--************* Soru 1 ****************--

-- Verilen siparişlerden kargo şirketleri toplam ne kadarlık ciro yapmış
-- (Kargo Şirketi, Toplam Ciro)--

SELECT Shippers.CompanyName as "Kargo Şirketi", 
       SUM("Order Details".UnitPrice * "Order Details".Quantity) as "Toplam Ciro"
FROM Shippers
JOIN Orders ON Shippers.ShipperID = Orders.ShipVia
JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID
GROUP BY Shippers.CompanyName;

Go

--************* Soru 2 ****************--

-- Siparişlerimi kaç günde teslim etmişim? Teslim süresi ile siparişleri listeleyelim.
-- (Sipariş numarası, Teslim süresi)--

SELECT Orders.OrderID, (DATEDIFF(day,Orders.ShippedDate, Orders.OrderDate)) as Teslim_süresi
FROM Orders
WHERE Orders.ShippedDate IS NOT NULL;

Go

--************* Soru 3 ****************--

-- Siparişler ortalama kaç günde teslim edilmiş?
-- (Teslim süresi)

SELECT AVG(DATEDIFF(day, OrderDate, ShippedDate)) as Teslim_süresi
FROM Orders
WHERE ShippedDate IS NOT NULL;

Go

--************ Soru 4 **************--

-- Sipariş vermeyen müşteriler kimler?
-- (Müşteri Adı, Firma Adı, Yetkili Adı, Ülke)

SELECT Customers.ContactName, Customers.CompanyName, Customers.ContactName, Customers.Country
FROM Customers
WHERE Customers.CustomerID NOT IN (SELECT DISTINCT CustomerID FROM Orders);

Go

--************* Soru 5 *****************--

-- Gönderdiğim fiyata göre KDV  tutarını geri döndüren bir 
-- fonksiyon yazalım ve çağıralım.

CREATE FUNCTION KDV_hesapla (@Fiyat FLOAT) 
RETURNS FLOAT
AS
BEGIN
    DECLARE @KDV FLOAT;
    SET @KDV = @Fiyat * 0.18;
    RETURN @KDV;
END;

Go

--************ Soru 6 ***************--

-- Products tablosu içerisindeki ürünleri kdv tutarları ile beraber listeleyelim.
-- (Ürün Adı, Birim Fiyatı, Kdv Tutarı)

SELECT ProductName as "Ürün Adı", UnitPrice as "Birim Fiyatı", UnitPrice * 0.18 as "KDV Tutarı"
FROM Products;
Go

--*********** Soru 7 **************--
-- KDV' li tutarı geriye döndüren fonksiyon yazalım.

CREATE FUNCTION KDV_Dahil_Toplam_Fiyatı_Hesapla (@Fiyat FLOAT) 
RETURNS FLOAT
AS
BEGIN
    DECLARE @TotalPriceWithVAT FLOAT;
    SET @TotalPriceWithVAT = @Fiyat * 1.18; -- %18 KDV dahil
    RETURN @TotalPriceWithVAT;
END;
Go

--*************** Soru 8 ******************--

-- Products tablosu içerisindeki ürünleri kdv tutarları ile beraber listeleyelim.
-- (Ürün Adı, Birim Fiyatı, Kdv Tutarı, KDVli Tutar)

SELECT ProductName as "Ürün Adı", UnitPrice as "Birim Fiyatı", UnitPrice * 0.18 as "KDV Tutarı", KDV_Dahil_Toplam_Fiyatı_Hesapla(UnitPrice) as "KDVli Tutar"
FROM Products;

--*************************--
