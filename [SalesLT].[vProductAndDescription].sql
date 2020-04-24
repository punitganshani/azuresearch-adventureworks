/****** Object:  View [SalesLT].[vProductAndDescription]    Script Date: 4/24/2020 10:37:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [SalesLT].[vProductAndDescription]
WITH SCHEMABINDING
AS
-- View (indexed or standard) to display products and product descriptions by language.
SELECT
    p.[ProductID]
    ,p.[Name]
    ,pm.[Name] AS [ProductModel]
    ,pmx.[Culture]
    ,pd.[Description]
	,p.[ModifiedDate] as ModifiedDate
FROM [SalesLT].[Product] p
    INNER JOIN [SalesLT].[ProductModel] pm
    ON p.[ProductModelID] = pm.[ProductModelID]
    INNER JOIN [SalesLT].[ProductModelProductDescription] pmx
    ON pm.[ProductModelID] = pmx.[ProductModelID]
    INNER JOIN [SalesLT].[ProductDescription] pd
    ON pmx.[ProductDescriptionID] = pd.[ProductDescriptionID];
GO


