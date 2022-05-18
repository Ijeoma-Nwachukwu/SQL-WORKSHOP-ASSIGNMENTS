CREATE View Housing_M_Postcodes
WITH SCHEMABINDING
AS
SELECT p.[ID],m.[GeoLocation],p.[Price],p.[Postcode]
FROM [dbo].[pp-2019] p
INNER JOIN [dbo].[NSPL_NOV_2019_UK_M] m 
ON REPLACE(p.[Postcode],' ','')= REPLACE(m.[pcd], ' ','')CREATE View Housing_M_Postcodes_Detached
WITH SCHEMABINDING
AS
SELECT p.[ID],m.[GeoLocation],p.[Price],p.[Postcode]
FROM [dbo].[pp-2019] p
INNER JOIN [dbo].[NSPL_NOV_2019_UK_M] m 
ON REPLACE(p.[Postcode],' ','')= REPLACE(m.[pcd], ' ','')
WHERE [Property_type] = 'D'CREATE View Housing_M_Postcodes_Semi_Detached
WITH SCHEMABINDING
AS
SELECT p.[ID],m.[GeoLocation],p.[Price],p.[Postcode]
FROM [dbo].[pp-2019] p
INNER JOIN [dbo].[NSPL_NOV_2019_UK_M] m 
ON REPLACE(p.[Postcode],' ','')= REPLACE(m.[pcd], ' ','')
WHERE [Property_type] = 'S'CREATE View Housing_M_Postcodes_Terraced
WITH SCHEMABINDING
AS
SELECT p.[ID],m.[GeoLocation],p.[Price],p.[Postcode]
FROM [dbo].[pp-2019] p
INNER JOIN [dbo].[NSPL_NOV_2019_UK_M] m 
ON REPLACE(p.[Postcode],' ','')= REPLACE(m.[pcd], ' ','')
WHERE [Property_type] = 'T'CREATE View Housing_M_Postcodes_Flats_Maisonettes
WITH SCHEMABINDING
AS
SELECT p.[ID],m.[GeoLocation],p.[Price],p.[Postcode]
FROM [dbo].[pp-2019] p
INNER JOIN [dbo].[NSPL_NOV_2019_UK_M] m 
ON REPLACE(p.[Postcode],' ','')= REPLACE(m.[pcd], ' ','')
WHERE [Property_type] = 'F'CREATE UNIQUE CLUSTERED INDEX idx_id ON Housing_M_Postcodes(ID)
GO
CREATE UNIQUE CLUSTERED INDEX idx_id ON Housing_M_Postcodes_Detached(ID)
GO
CREATE UNIQUE CLUSTERED INDEX idx_id ON Housing_M_Postcodes_Flats_Maisonettes(ID)
GO
CREATE UNIQUE CLUSTERED INDEX idx_id ON Housing_M_Postcodes_Semi_Detached(ID)
GO
CREATE UNIQUE CLUSTERED INDEX idx_id ON Housing_M_Postcodes_Terraced(ID)