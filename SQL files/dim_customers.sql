SELECT c.customerkey                AS CutomerKey
       --,[GeographyKey]
       --,[CustomerAlternateKey]
       --,[Title]
       ,
       c.firstname                  AS [FirstName]
       --,[MiddleName]
       ,
       c.lastname                   AS [LastName],
       c.firstname + ' ' + lastname AS [Full Name]
       --,[NameStyle]
       --,[BirthDate]
       --,[MaritalStatus]
       --,[Suffix]
       ,
       CASE c.gender
         WHEN 'M' THEN 'Male'
         WHEN 'F' THEN 'Female'
       END                          AS Gender
       --,[EmailAddress]
       --,[YearlyIncome]
       --,[TotalChildren]
       --,[NumberChildrenAtHome]
       --,[EnglishEducation]
       --,[SpanishEducation]
       --,[FrenchEducation]
       --,[EnglishOccupation]
       --,[SpanishOccupation]
       --,[FrenchOccupation]
       --,[HouseOwnerFlag]
       --,[NumberCarsOwned]
       --,[AddressLine1]
       --,[AddressLine2]
       --,[Phone]
       ,
       c.datefirstpurchase          AS DateFirstPurchase
       --,[CommuteDistance]
       ,
       g.city                       AS [Customer City]
FROM   dbo.dimcustomer AS c
       LEFT JOIN dbo.dimgeography AS g
              ON g.geographykey = c.geographykey
ORDER  BY customerkey ASC 