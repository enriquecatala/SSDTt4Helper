
CREATE VIEW Sales.vw_SalesOrders
AS
    SELECT  --OrderHeader
			sh.SalesOrderID ,
            sh.AccountNumber ,
            sh.OrderDate ,
            sh.Freight ,
            sh.SalesPersonID ,
            sh.CustomerID ,
            sh.TotalDue ,
			-- OrderDetail
            sd.OrderQty ,
            sd.ProductID ,
            sd.SpecialOfferID ,
            sd.UnitPrice ,
            sd.LineTotal ,
			-- Product
            p.Name ,
            p.ProductNumber ,
            p.Color
    FROM    Sales.SalesOrderHeader sh
            JOIN Sales.SalesOrderDetail sd ON sh.SalesOrderID = sd.SalesOrderID
            LEFT JOIN Sales.SpecialOfferProduct sop ON sd.SpecialOfferID = sop.SpecialOfferID -- son ofertas, no todos tienen...LEFT JOIN
                                                       AND sd.ProductID = sop.ProductID
            JOIN Production.Product p ON sop.ProductID = p.ProductID; 
