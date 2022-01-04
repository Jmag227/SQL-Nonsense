/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 Select p.productID, p.Name
 from Products p
 Left Join Categories c 
 on p.CategoryID = c.CategoryID
 where c.CategoryID = 1;
 -- where categories.categoryId = 1;
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 Select p.name, p.price, r.rating
 from products p
 left join reviews r 
 on p.ProductID = r.ProductID
 where r.rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
Select e.FirstName, e.LastName, SUM(s.Quantity) 'total'
From Sales s
Inner Join employees e
On e.employeeID = s.employeeID
Group By e.employeeID
Order By total Desc
limit 2;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
Select d.Name As Department, c.Name AS Category
From departments as d
Inner Join categories c
On c.DepartmentID = d.departmentID
Where c.Name = 'Games' Or c.Name = 'appliences';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
Select p.Name, Sum(s.Quantity) AS 'Total Sold', Sum(s.Quantity * s.PricePerUnit) As 'Total Price'
From products p
Inner Join sales s 
On s.ProductID = p.ProductID
Where p.ProductID = 97;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
Select p.Name As 'Product Name', r.Reviewer, r.Rating, r.Comment
From reviews r 
Inner Join Products p 
On p.ProductID = r.ProductID 
Where p.Name = 'Visio TV' And r.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
