use master
CREATE DATABASE testDB01;
go
use testDB01
go

CREATE Login testUser01
WITH PASSWORD = 'nicepw01!', CHECK_POLICY = OFF ;

CREATE USER testUser01 FOR LOGIN testUser01;

exec sp_addrolemember db_datareader, testUser01 


create table tbl_bankHolidays
(
Yr char (4)
, NoOfBankHolidays char (2)
)

insert into tbl_bankHolidays values ('2018' , '8')


/**
-- clean up
DROP LOGIN testUser01
Drop user  testUser01
use master;
drop database testDB01;
**/ 

/*** To do

Add list of SQL server version on which this has been tested.


***/