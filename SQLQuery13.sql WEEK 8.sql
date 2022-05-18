CREATE View Housing_M_Postcodes
WITH SCHEMABINDING
AS
SELECT p.[ID],m.[GeoLocation],p.[Price],p.[Postcode]
FROM [dbo].[pp-2019] p
INNER JOIN [dbo].[NSPL_NOV_2019_UK_M] m 
ON REPLACE(p.[Postcode],' ','')= REPLACE(m.[pcd], ' ','')
WITH SCHEMABINDING
AS
SELECT p.[ID],m.[GeoLocation],p.[Price],p.[Postcode]
FROM [dbo].[pp-2019] p
INNER JOIN [dbo].[NSPL_NOV_2019_UK_M] m 
ON REPLACE(p.[Postcode],' ','')= REPLACE(m.[pcd], ' ','')
WHERE [Property_type] = 'D'
WITH SCHEMABINDING
AS
SELECT p.[ID],m.[GeoLocation],p.[Price],p.[Postcode]
FROM [dbo].[pp-2019] p
INNER JOIN [dbo].[NSPL_NOV_2019_UK_M] m 
ON REPLACE(p.[Postcode],' ','')= REPLACE(m.[pcd], ' ','')
WHERE [Property_type] = 'S'
WITH SCHEMABINDING
AS
SELECT p.[ID],m.[GeoLocation],p.[Price],p.[Postcode]
FROM [dbo].[pp-2019] p
INNER JOIN [dbo].[NSPL_NOV_2019_UK_M] m 
ON REPLACE(p.[Postcode],' ','')= REPLACE(m.[pcd], ' ','')
WHERE [Property_type] = 'T'
WITH SCHEMABINDING
AS
SELECT p.[ID],m.[GeoLocation],p.[Price],p.[Postcode]
FROM [dbo].[pp-2019] p
INNER JOIN [dbo].[NSPL_NOV_2019_UK_M] m 
ON REPLACE(p.[Postcode],' ','')= REPLACE(m.[pcd], ' ','')
WHERE [Property_type] = 'F'
GO
CREATE UNIQUE CLUSTERED INDEX idx_id ON Housing_M_Postcodes_Detached(ID)
GO
CREATE UNIQUE CLUSTERED INDEX idx_id ON Housing_M_Postcodes_Flats_Maisonettes(ID)
GO
CREATE UNIQUE CLUSTERED INDEX idx_id ON Housing_M_Postcodes_Semi_Detached(ID)
GO
CREATE UNIQUE CLUSTERED INDEX idx_id ON Housing_M_Postcodes_Terraced(ID)