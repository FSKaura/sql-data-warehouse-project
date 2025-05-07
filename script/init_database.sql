/*
==============================================================
Create DataBase and Schemas
==============================================================

Script purpose:
  This script creates a new database named 'DataWarehouse' after checking if at already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'.

WARNING:
Running this script will drop the entire 'DataWarehouse' database if it exists.
All data in the database will be permanently deleted. preceed with caution and ensure you have proper backup befor running this script.
*/

USE master;


-- DROP AND RECREATE THE ' DATAWAREHOUSE' DATABASE

IF EXIXTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE Datawarehouse;
END;
GO

--Create the 'Datawarehouse' databas
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO
-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
