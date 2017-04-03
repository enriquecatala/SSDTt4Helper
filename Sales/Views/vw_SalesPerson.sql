
create view Sales.vw_SalesPerson
AS
	-- Como ya tengo una "logica" en mi vista vw_SalesOrders, la reutilizo para añadirle info extra...
    SELECT DISTINCT
            sh.SalesOrderID ,
            sh.AccountNumber ,
            sh.OrderDate ,
            sh.Freight ,
            sh.SalesPersonID ,
            sh.CustomerID ,
            sh.TotalDue ,
            SalesQuota ,
            Bonus ,
            SalesYTD ,
            SalesLastYear
    FROM    Sales.vw_SalesOrders sh
            JOIN Sales.SalesPerson sp ON sh.SalesPersonID = sp.BusinessEntityID;
