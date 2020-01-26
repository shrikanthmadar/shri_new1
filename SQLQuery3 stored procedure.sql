USE [shri]
GO
/****** Object:  StoredProcedure [dbo].[calci]    Script Date: 26-01-2020 20:23:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[calci]
   @op1 float=0,
   @Operand varchar(10)=Null,
   @op2 float=0
as
begin
     set nocount on;

     if @Operand='+'
     begin
        insert into dbo.Calculator (op1,operand,op2,result) values (@op1,@operand,@op2,@op1+@op2)
     end

     if @Operand='-'
     begin
        insert into dbo.Calculator (op1,operand,op2,result) values (@op1,@operand,@op2,@op1-@op2)
     end
     if @Operand='*'
     begin
        insert into dbo.Calculator (op1,operand,op2,result) values (@op1,@operand,@op2,@op1*@op2)
     end
     if @Operand='/'
     begin
        if @op2=0
            print 'Divisor cant be Zero'
        else
            insert into dbo.Calculator (op1,operand,op2,result) values (@op1,@operand,@op2,@op1/@op2)
     end
end
