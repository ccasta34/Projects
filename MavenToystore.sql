


----Lets see the stores with the most sales 

--Select Store_ID, Sum (Units) as TotalunitsSold  
--From Sales 
--Group by Store_ID
--Order by TotalunitsSold Desc


----Lets now see the stores with the least sales 

--Select Store_ID, Sum (Units) as TotalunitsSold  
--From Sales 
--Group by Store_ID
--Order by TotalunitsSold asc

----Now lets see the store with the most sales in the holiday season by units 

--Select store_ID, sum (Units) as HolidayStore
--From dbo.sales 
--Where Date  between '2017-11-01' and '2017-12-30'  
--Group by Store_ID
--Order by HolidayStore desc

----Now lets see the sotre that sold the least during the holiday season  by units 

--Select store_ID, sum (Units) as HolidayStore
--From dbo.sales 
--Where Date  between '2017-11-01' and '2017-12-30'  
--Group by Store_ID
--Order by HolidayStore desc

--Now lets see the store that sold the most during the summer by unites 

--Select store_ID, sum (Units) as summerstore 
--From dbo.sales 
--Where Date  between '2017-05-01' and '2017-08-31'  
--Group by Store_ID
--Order by summerstore asc

--Now lets see the most sales in the other months 

--Select store_ID, sum (Units) as othermonths
--From dbo.sales 
--Where Date  not between '2017-11-01' and '2017-12-30'and Date not between '2017-05-01' and '2017-08-31'  
--Group by Store_ID
--Order by othermonths desc

--Lets now see the least sales in these months 

--Select store_ID, sum (Units) as othermonths
--From dbo.sales 
--Where Date  not between '2017-11-01' and '2017-12-30'and Date not between '2017-05-01' and '2017-08-31'  
--Group by Store_ID
--Order by othermonths asc


----Lets now see what is the most sold item 

--Select Product_ID, sum(units) as TopProductSold From dbo.sales
--Group by Product_ID
--Order by TopProductSold desc


----Lets now see the least sole item 

--Select Product_ID, sum(Units) as TopProductSold From dbo.sales
--Group by Product_ID
--Order by TopProductSold asc


----Lets see the most sold item during the holiday season 

--Select Product_ID, sum (Units) as HolidayItem
--From dbo.sales 
--Where Date  between '2017-11-01' and '2017-12-30'  
--Group by Product_ID
--Order by HolidayItem desc


----Lets see the least sold item during the holiday season 

--Select Product_ID, sum (Units) as HolidayItem
--From dbo.sales 
--Where Date  between '2017-11-01' and '2017-12-30'  
--Group by Product_ID
--Order by HolidayItem asc

----lets now see the most sold item during the summer season 

--Select Product_ID, sum (Units) as SummerMostSoldItem
--From dbo.sales 
--Where Date  between '2017-05-01' and '2017-08-31'  
--Group by Product_ID
--Order by SummerMostSoldItem desc


----Lets now see the least sold item sold during the summer season 

--Select Product_ID, sum (Units) as SummerMostSoldItem
--From dbo.sales 
--Where Date  between '2017-05-01' and '2017-08-31'  
--Group by Product_ID
--Order by SummerMostSoldItem asc


----Now lets see the most sold items that where sold that werent in these months 


--Select Product_ID, sum (Units) as othermonths 
--From dbo.sales 
--Where Date not between '2017-05-01' and '2017-08-31' and Date not between '2017-11-01' and '2017-12-30'  
--Group by Product_ID
--Order by othermonths desc



----Now lets see the least sold itesm that where sold that werent in these months 

--Select Product_ID, sum (Units) as othermonths 
--From dbo.sales 
--Where Date not between '2017-05-01' and '2017-08-31' and Date not between '2017-11-01' and '2017-12-30'  
--Group by Product_ID
--Order by othermonths asc



--select top 10 products.Product_ID,products.Product_Name, sum(sales.units) as Total_units_Sold
--from products
--inner join sales  on products.Product_ID = sales.Product_ID
--group by  products.Product_ID,products.Product_Name
--order by Total_units_Sold desc



--  --Lets find the most Expensive item at all the stores 


--  Select   Max(Product_Price) as MaxPrice ,Product_id,Product_name 
--  From dbo.products
--  Group by Product_Name,Product_ID
--  Order by MaxPrice desc

--  --Lets find the least Expensive item at all the stores 

--   Select   Min(Product_Price) as MaxPrice ,Product_id,Product_name 
--  From dbo.products
--  Group by Product_Name,Product_ID
--  Order by MaxPrice asc

--  --Lets find the item that cost the most to make 

--  Select   Max(Product_Cost) as Maxcost ,Product_id,Product_name 
--  From dbo.products
--  Group by Product_Name,Product_ID
--  Order by Maxcost desc

--  --Lets find the item that cost the least  to make 
--  Select  Max(Product_Cost) as Maxcost ,Product_id,Product_name 
--  From dbo.products
--  Group by Product_Name,Product_ID
--  Order by Maxcost asc

--  --lets find the most expensive catoagiry 

--  Select top 10  sum(Product_Price) as MaxPriceCAT ,Product_Category
--  From dbo.products
--  Group by Product_Category
--  Order by MaxPriceCAT desc

--  --Lets find the  least expesnive Category 
--   Select top 10  sum(Product_Price) as MaxPriceCAT ,Product_Category
--  From dbo.products
--  Group by Product_Category
--  Order by MaxPriceCAT asc

----Lets now find the items with the best profit margins 

--SELECT Product_price - Product_cost as Profit ,Product_ID,Product_Name
--From dbo.products
--Order by Profit desc

----Lets now find the items that have the worst profit margins 

--SELECT Product_price - Product_cost as Profit ,Product_ID,Product_Name
--From dbo.products
--Order by Profit asc

----Lets now find the best profit by product category 

--SELECT  Product_Category,  sum (Product_price - Product_cost) as ProfitC 
--From dbo.products
--Group by Product_Category
--Order by ProfitC desc

----Lets now find the worst profit margins by product Category

--SELECT  Product_Category,  sum (Product_price - Product_cost) as ProfitC 
--From dbo.products
--Group by Product_Category
--Order by ProfitC asc


--	--------Now Lets put all this toger to create our dashboard 
--select  products.Product_ID,Date,
--stores.Store_ID
--,Stores.Store_Name
--,Stores.Store_City
--,Stores.Store_Location
--,Product_Name
--,product_category
--,True_Profit
--,
--sum(sales.units) as Total_units_Sold
--,Product_Cost,Product_Price,sum(sales.units)
--* Product_Cost as TotalCost ,sum(sales.units)
--* Product_Price as TotalSale
--from products
--inner join sales  on products.Product_ID = sales.Product_ID
--inner join stores on sales.Store_ID = stores.Store_ID
--group by  products.Product_ID ,Date,stores.Store_ID,Stores.Store_Name,
--Stores.Store_City
--,Stores.Store_Location,products.Product_Name,Product_Category,Product_Price,Product_Cost,True_Profit
--order by store_id asc










