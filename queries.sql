-- Multi-Table Query Practice

--SELECT * FROM [Products] join categories on categories.categoryid = products.categoryID

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select product.*
    , category.categoryName 
    from product 
    join category ON product.categoryid = Category.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select [order].id
    , [order].OrderDate
    , [order].ShipVia
    , shipper.companyName
    from [order]
    join
    shipper on [order].shipvia = shipper.id
    where [order].orderdate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT
    *
 from orderdetail
 join product ON orderdetail.productid = product.id
 where orderdetail.orderId = 10251
 order by product.productName;
    

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select 
    id as OrderId,
    customer.companyName,
    employee.lastName
from [order]
join customer ON [order].customerId = customer.id
join employee on [order].employeeId = employee.id;