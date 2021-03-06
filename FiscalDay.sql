USE [mSwipe_ERP_Live_DEV]
GO
/****** Object:  UserDefinedFunction [dbo].[FiscalDay]    Script Date: 3/23/2022 1:23:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[FiscalDay] (@CurrentDATE datetime)
RETURNS int

AS
BEGIN
     DECLARE @FiscalDay int;
     DECLARE @YearStartDate DateTime;
     Set @YearStartDate=Cast('20120401' As DateTime) 
     set @FiscalDay =  DATEDIFF(DAY,@YearStartDate , @CurrentDATE) 
     RETURN(@FiscalDay);
END;

