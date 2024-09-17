SELECT p.[productkey],
       [productalternatekey]            AS ProductItemCode
       --,[ProductSubcategoryKey]
       --,[WeightUnitMeasureCode]
       --,[SizeUnitMeasureCode]
       ,
       p.[englishproductname]           AS [Product Name],
       ps.englishproductsubcategoryname AS [Sub Category],
       pc.englishproductcategoryname    AS [Product Category],
       --,[SpanishProductName]
       --,[FrenchProductName]
       --,[StandardCost]
       --,[FinishedGoodsFlag]
       p.[color]                        AS [Product Color],
       --,[SafetyStockLevel]
       --,[ReorderPoint]
       --,[ListPrice]
       p.[size]                         AS [Product Size],
       --,[SizeRange]
       --,[Weight]
       --,[DaysToManufacture]
       p.[productline]                  AS [Product Line],
       --,[DealerPrice]
       --,[Class]
       --,[Style]
       p.[modelname]                    AS [Product Model Name],
       --,[LargePhoto]
       p.[englishdescription]           AS [Product Description],
       --,[FrenchDescription]
       --,[ChineseDescription]
       --,[ArabicDescription]
       --,[HebrewDescription]
       --,[ThaiDescription]
       --,[GermanDescription]
       --,[JapaneseDescription]
       --,[TurkishDescription]
       --,[StartDate]
       --,[EndDate]
       Isnull (p.status, 'Outdated')    AS [Product Satus]
FROM   [dbo].[dimproduct] AS p
       LEFT JOIN dbo.dimproductsubcategory AS ps
              ON ps.productsubcategorykey = p.productsubcategorykey
       LEFT JOIN dbo.dimproductcategory AS pc
              ON ps.productcategorykey = pc.productcategorykey
ORDER  BY p.productkey ASC 