/*Robert Payne
02-03-2013
ITCS 3160
*/
--problem 1
create database Homework3
go
use Homework3
go

create table Problem1(
	StudentID	int NOT NULL,
	StudentName	varchar(20)
)

insert into Problem1
values(1, 'Jim')
--will not insert because of Not null constraint on StudentID
insert into Problem1 (StudentName)
values('Susan')
