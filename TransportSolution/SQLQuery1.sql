create database dbSoftTransport

create proc proc_InsertEmployee(@eName varchar(20),
@ePassword varchar(20),
@eLocation varchar(20),
@ePhone varchar(20))
as
Insert into tblEmployee(Name,Password,Location,Phone) values(@eName,@ePassword,@eLocation,@ePhone)

create proc proc_UpdatePassword(@eid int,@ePassword varchar(20))
as
update tblEmployee set Password=@ePassword where id=@eid

create proc proc_GetAllEmployees
as
	select * from tblEmployee

exec proc_GetAllEmployees
