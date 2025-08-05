-- film tablosunda film uzunluğu length sütununda gösterilmektedir.Uzunluğu ortalama film uzunluğundan fazla kaç adet film vardır?

SELECT COUNT(*) as film_sayisi FROM film WHERE length>(SELECT AVG(length) FROM film); 

-- film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

SELECT COUNT(*) FROM film WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.

SELECT * FROM film WHERE rental_rate =(SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film); 

-- payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

SELECT COUNT(amount) AS alis_veris_miktari,customer.first_name,customer.last_name FROM payment 
JOIN customer ON payment.customer_id=customer.customer_id
GROUP BY payment.customer_id,customer.first_name,customer.last_name ORDER BY COUNT(amount) DESC LIMIT 10;

