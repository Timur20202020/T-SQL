CREATE FUNCTION dbo.GetSKUPrice(@ID_SKU INT)
RETURNS DECIMAL(18, 2)
AS
BEGIN
    DECLARE @PRICE MONEY
    SELECT @PRICE = SUM(Value)/SUM(Quantity)
    FROM Basket
    WHERE ID_SKU = @ID_SKU
    RETURN @PRICE
END;


select *, dbo.GetSKUPrice(id) as price from SKU;



DROP FUNCTION dbo.GetSKUPrice; 