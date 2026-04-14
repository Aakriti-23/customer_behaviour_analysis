select * from customer; 
select * from customer limit 20;

-- total revenue genereated by male vs female 
select gender, sum(purchase_amount) as total_revenue
from customer
group by gender;

 -- which customer used a discount but still spent more than the avg purchase amount
select customer_id, purchase_amount
from customer
where discount_applied = 'Yes' and purchase_amount >= (select avg(purchase_amount) from customer);

-- top 5 products with highest avg review rating
select item_purchased, round(avg(review_rating::numeric),2) as avg_rating
from customer
group by item_purchased 
order by avg_rating desc 
limit 5;

-- compare the avg purchase amount b/w standard and express shipping
select * from customer; 

select shipping_type, round(avg(purchase_amount),2) as avg_purchase_amount
from customer
where shipping_type in ('Express', 'Standard')
group by shipping_type; 

-- do subscribed customers spend more? compare avg spend and total revenue b/w subscribers and non-subscribers
select subscription_status, 
count(customer_id) as total_customers,
sum(purchase_amount) as total_revenue, 
round(avg(purchase_amount),2) as avg_purchase_amount
from customer
group by subscription_status
order by total_revenue, avg_purchase_amount desc;

-- top 5 products that have he highest % of purchases with discount applied
select * from customer; 

select item_purchased, 
ROUND(COUNT(*) FILTER (WHERE discount_applied = 'Yes') * 100.0 / COUNT(*),2) AS discount_percentage
FROM customer
GROUP BY item_purchased
limit 5;

SELECT 
item_purchased,
ROUND(SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS discount_percentage
FROM customer
GROUP BY item_purchased
limit 5;

-- segment customers into new, returning and loyal based on their total no. of previous purchases 
-- and show count of each segment

with customer_type as
select customer_id, previous_purchas
 





 