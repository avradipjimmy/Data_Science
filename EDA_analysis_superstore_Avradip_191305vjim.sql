SELECT * FROM data.`sample_-_superstore_data`;


 select count(*)
  FROM data.`sample_-_superstore_data`;
  
   SELECT Order_ID, count(*)
FROM  data.`sample_-_superstore_data`
group by Order_ID
having count(*)>1;

SELECT Order_ID,Row_ID,count(*)
FROM  data.`sample_-_superstore_data`
group by Order_ID,Row_ID
having count(*)>1;


select distinct Ship_Mode as Ship_mode,count(*) as count from  data.`sample_-_superstore_data`
group by ship_mode
order by count;

SELECT min(Profit), max(Profit),min(Sales), max(Sales)
from data.`sample_-_superstore_data`;

SELECT  distinct Category as category , city as city, Sub_Category as Sub_Category from data.`sample_-_superstore_data`
group by City
order by 3 desc;

SELECT Customer_Name,Region,City,min(Quantity),max(Quantity),min(Discount),max(Discount) from data.`sample_-_superstore_data`
group by Customer_Name
order by 7 desc;


  select Customer_ID,Order_ID,count(*) from data.`sample_-_superstore_data`
  group by Customer_ID, Order_ID
  order by Customer_ID;
  
  SELECT * FROM data.`sample_-_superstore_data`
  where Order_ID='CA-2018-152156';
  
  select  Customer_Name,Customer_ID,max(Ship_date),min(Ship_Date) from data.`sample_-_superstore_data`
  group by Order_Date
  order by 4 desc 
  limit 10;
  
  SELECT * FROM data.`sample_-_superstore_data`;
  select distinct Customer_ID,Order_ID,Quantity, case when Quantity>30 THEN 'The quantity is greater then 30'
                                                     When Quantity=30 Then 'The quantity is 30'
                                                     ELSE 'The quantity is under 30'
                                                     END as QuantityText from  data.`sample_-_superstore_data`;
                                            
                                            
  SELECT Customer_Name, Customer_ID,Order_ID,sum(Quantity),count(Sales),AVG(Profit) from data.`sample_-_superstore_data`
  group by Quantity
  order by 5 desc;
  
  
SELECT sum(Profit) as profit , sum(Sales) as sales ,sum(Discount) as discount   from data.`sample_-_superstore_data`;


  
  
  
  
  
  
                                    
                                     
		
  
  
  
  











  


 





  