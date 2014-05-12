/*Robert Payne
02-03-2013
ITCS 3160
*/
--problem 2
create table Problem2(
	StudentID int NOT NULL,
	Age int NOT NULL

	constraint PK_StudentID2 PRIMARY KEY CLUSTERED(StudentID),
	constraint CK_MinAge CHECK (Age > 15)
	)
--ones that pass
insert into Problem2
values(1, 18)
insert into Problem2
values(2, 16)
--ones that don't pass
insert into Problem2
values(1,18)
insert into Problem2
values(3,13)
