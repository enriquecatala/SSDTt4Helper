CREATE PROCEDURE dbo.RendimientoNoPredecible @begin INT, @end INT
AS
    BEGIN 
        SELECT  sh.SalesOrderID ,
                sh.OrderDate ,
                sd.ProductID ,
                sd.OrderQty
        FROM    Sales.SalesOrderHeader sh
                INNER JOIN Sales.SalesOrderDetail sd ON sh.SalesOrderID = sd.SalesOrderID
        WHERE   sh.SalesOrderID BETWEEN @begin AND @end;

    END; 