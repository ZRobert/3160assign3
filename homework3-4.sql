/*Robert Payne
02-03-2013
ITCS 3160
*/
--problem 4

create table Problem4(
	FirstName varchar(20),
	LastName varchar(20)	NOT NULL,	
	Mentor	varchar(20)		NOT NULL

	constraint UK_Mentor UNIQUE NONCLUSTERED (Mentor)
)
-- insert that works
insert into Problem4 (LastName, Mentor)
values('Richerson', 'Mr. Miyagi')
-- insert that fails unique criteria
insert into Problem4 (LastName, Mentor)
values('Russo', 'Mr. Miyagi')
