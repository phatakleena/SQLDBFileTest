USE [mSwipe_ERP_Live_DEV]
GO
/****** Object:  UserDefinedFunction [dbo].[ConvertVarBinary]    Script Date: 3/23/2022 1:22:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER function [dbo].[ConvertVarBinary](@v_varbinary varbinary(8))
returns varchar(200)
as
begin
 
 declare @v_ouput varchar(200)
 --set @v_varbinary = (select CONVERT(VARBINARY(8), 352)   )
--set @v_varbinary = (select CONVERT(VARBINARY(8), 10)  )

if (isnumeric(CONVERT(varchar(max),@v_varbinary   ,2))=1)
begin

set @v_ouput=(select cast(CONVERT(varchar(max),@v_varbinary   ,2) as int))

end
else
begin

set @v_ouput=(select substring((CONVERT(varchar(max),@v_varbinary   ,2) ), patindex('%[^0]%',(CONVERT(varchar(max),@v_varbinary   ,2) )), 10))


end



  return(@v_ouput)
end