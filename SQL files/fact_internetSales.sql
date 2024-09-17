SELECT [productkey],
       [orderdatekey],
       [duedatekey],
       [shipdatekey],
       [customerkey],
       --,[PromotionKey]
       --,[CurrencyKey]
       --,[SalesTerritoryKey]
       [salesordernumber],
       --,[SalesOrderLineNumber]
       --,[RevisionNumber]
       --,[OrderQuantity]
       --,[UnitPrice]
       --,[ExtendedAmount]
       --,[UnitPriceDiscountPct]
       --,[DiscountAmount]
       --,[ProductStandardCost]
       --,[TotalProductCost]
       [salesamount]
--,[TaxAmt]
--,[Freight]
--,[CarrierTrackingNumber]
--,[CustomerPONumber]
--,[OrderDate]
--,[DueDate]
--,[ShipDate]
FROM   [dbo].[factinternetsales]
WHERE  LEFT (orderdatekey, 4) >= Year(Getdate()) - 2
-- Ensures we always only bring two years of date from extraction
ORDER  BY orderdatekey ASC 