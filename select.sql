-- Сколько заказов
SELECT users.id, users.name, COUNT(orders.id) count_buy
FROM users JOIN orders 
ON users.id = orders.id_user
GROUP BY users.id, users.name;

-- Сколько заказали красных машин
SELECT COUNT(orders.id) buy_red
FROM orders JOIN color
ON orders.id_color = color.id
WHERE color.color = "Red";

-- Кто сделал больше всего заказов
WITH tab AS(
SELECT COUNT(id_car) as cnt
FROM orders
GROUP BY id_user
)

SELECT name, surname, father_name
FROM users JOIN orders
ON users.id = orders.id_user
GROUP BY name, surname, father_name
HAVING COUNT(orders.id) = (SELECT MAX(tab.cnt) FROM tab);

-- В каком месяце было куплено больше всего машин
with tab as(
	SELECT MONTHNAME(date_buy) mnth, COUNT(id) cnt
	from orders
    GROUP BY MONTHNAME(date_buy)
)

SELECT tab.mnth
FROM tab
WHERE tab.cnt = (SELECT MAX(cnt) from tab);
