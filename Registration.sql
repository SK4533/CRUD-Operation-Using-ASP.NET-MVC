create database Registration
use Registration
create table Regis(S_No int identity(1,1) primary key not null,First_Name varchar(50) not null,
Last_Name varchar(50) not null,Email varchar(100) not null,Password varchar(50) not null,
DOB date not null,Mobile_Number bigint not null,Gender varchar(6) not null
)
insert into Regis(First_Name,Last_Name,Email,Password,DOB,Mobile_Number,Gender) values
('Sivakumar','V','sivakumartn33@gmail.com','pass@123','2005-01-24',9787529966,'Male')
drop proc Deletion
select * from Regis
truncate table Regis

create procedure GetAll
AS
BEGIN
   select * from Regis
END
exec GetAll


create procedure Insertions
@First_Name varchar(50),
@Last_Name varchar(50),
@Email varchar(100),
@Password varchar(50),
@DOB date,
@Mobile_Number bigint,
@Gender varchar(6)
AS
BEGIN
   insert into Regis values(@First_Name,@Last_Name,@Email,@Password,@DOB,@Mobile_Number,@Gender)
END

create procedure Updation
@First_Name varchar(50),
@Last_Name varchar(50),
@Email varchar(100),
@Password varchar(50),
@DOB date,
@Mobile_Number bigint,
@Gender varchar(6),
@S_No int
AS
BEGIN
    update Regis
	set First_Name=@First_Name,
	Last_Name=@Last_Name,
	Email=@Email,
	Password=@Password,
	DOB=@DOB,
	Mobile_Number=@Mobile_Number,
	Gender=@Gender where S_No=@S_No
END
exec Updation @First_Name='Abinash',@Last_Name='E',
@Email='annamalai567@gmail.com',@Password='Abinash007',@DOB='2004-08-20',
@Mobile_Number='6380658217',@Gender='Male',@S_No=1


create procedure Deletion
@S_No int
AS
BEGIN
   delete from Regis where S_No=@S_No
END
exec Deletion 2

drop proc Insertions
