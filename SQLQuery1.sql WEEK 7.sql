USE master;
GO
CREATE DATABASE Crimes;CREATE TABLE [dbo].[Lancashire_Street_Level_Crimes](
[Crime ID] [nvarchar](255) NULL,
[Month] [nvarchar](50) NULL,
[Reported by] [nvarchar](150) NULL,
[Falls within] [nvarchar](150) NULL,
[Longitude] [float] NULL,
[Latitude] [float] NULL,
[Location] [nvarchar](255) NULL,
[LSOA code] [nvarchar](150) NULL,
[LSOA name] [nvarchar](150) NULL,
[Crime type] [nvarchar](150) NULL,
[Last outcome category] [nvarchar](500) NULL,
[Context] [nvarchar](500) NULL)

SELECT * FROM Crimes.DBO.Lancashire_Street_Level_Crimes 