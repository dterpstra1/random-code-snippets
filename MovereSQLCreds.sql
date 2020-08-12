--This code is for sample purposes, use at your own risk
USE [master]
GO
CREATE LOGIN [DOMAIN\MovereServiceAccountThatIsLocalAdminAndNotDomainAdmin] FROM WINDOWS WITH DEFAULT_DATABASE=[master]
GO
CREATE USER [DOMAIN\MovereServiceAccountThatIsLocalAdminAndNotDomainAdmin] FOR LOGIN [DOMAIN\MovereServiceAccountThatIsLocalAdminAndNotDomainAdmin]
GO
ALTER USER [DOMAIN\MovereServiceAccountThatIsLocalAdminAndNotDomainAdmin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DOMAIN\MovereServiceAccountThatIsLocalAdminAndNotDomainAdmin]
GO
use [msdb];
GO
CREATE USER [DOMAIN\MovereServiceAccountThatIsLocalAdminAndNotDomainAdmin] FOR LOGIN [DOMAIN\MovereServiceAccountThatIsLocalAdminAndNotDomainAdmin]
GO
ALTER USER [DOMAIN\MovereServiceAccountThatIsLocalAdminAndNotDomainAdmin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DOMAIN\MovereServiceAccountThatIsLocalAdminAndNotDomainAdmin]
GO
use [master]
GO
GRANT VIEW SERVER STATE TO [DOMAIN\MovereServiceAccountThatIsLocalAdminAndNotDomainAdmin]
GO
GRANT CONNECT SQL TO [DOMAIN\MovereServiceAccountThatIsLocalAdminAndNotDomainAdmin]
GO
GRANT VIEW ANY DEFINITION TO [DOMAIN\MovereServiceAccountThatIsLocalAdminAndNotDomainAdmin]
GO
