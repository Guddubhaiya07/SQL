-- 1193. Monthly Transactions I
SELECT  date_format(trans_date, '%Y-%m') as month    ,
 country ,
 count(*) as trans_count ,
  sum(case when state='approved' then 1 else 0 end ) as approved_count ,
  sum(amount) as trans_total_amount , 
  SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount 
  from Transactions
  -- where state ='approved' 
  group by date_format(trans_date,'%Y-%m') , country  ;




-- 1174. Immediate Food Delivery II
select round(sum(order_date = customer_pref_delivery_date)*100/count(*),2) as immediate_percentage  
from Delivery 
where (customer_id,order_date) in (select customer_id, min(order_date) as first_oder_date  from delivery
group by customer_id  )  ;
