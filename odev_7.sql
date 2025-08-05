--  film tablosunda bulunan filmleri rating değerlerine göre gruplandırınız.

SELECT COUNT(*),rating FROM film GROUP BY rating;

-- film tablosunda bulunan filmleri replacement_cost sütununa göre gruplandırdığımız film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayını sıralayınız.


SELECT COUNT(*),replacement_cost FROM film GROUP BY replacement_cost  HAVING COUNT(*)>50;

-- customer tablosunda bulunan store_id değerine karşılık gelen müşteri sayıları nelerdir?

SELECT store_id, COUNT(*) FROM customer GROUP BY store_id; 

-- city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.

SELECT COUNT(*) AS sehir_sayisi,country_id FROM city GROUP BY country_id ORDER BY COUNT(*) DESC LIMIT 1;