/*Robert Payne
02-03-2013
ITCS 3160
*/
--problem 5
create table Students(
	StudentNumber	int NOT NULL,
	FirstName		varchar(20),
	LastName		varchar(20)

	constraint PK_StudentNumber primary key clustered(StudentNumber)

)
create table Classes(
	CourseNumber	int NOT NULL,
	CourseName		varchar(20)

	constraint PK_CourseNumber primary key clustered(CourseNumber)
)

create table ClassRegistration(
	StudentIDNumber int NOT NULL,
	CourseNumber	int NOT NULL

	constraint FK_CourseNumber foreign key(CourseNumber) references Classes(CourseNumber) ON DELETE NO ACTION,
	constraint FK_StudentIDNumber foreign key(StudentIDNumber) references Students(StudentNumber) ON DELETE CASCADE
)

Insert into Classes (CourseNumber, CourseName)
Values(1212, 'Intro Comp Sci I')
Insert into Classes (CourseNumber, CourseName)
Values(1213, 'Intro Comp Sci II')
Insert into Classes (CourseNumber, CourseName)
Values(2215, 'Design & Anal Algo')

Insert into Students (StudentNumber, FirstName, LastName)
Values(1, 'Jake', 'Jameson')
Insert into Students (StudentNumber, FirstName, LastName)
Values(2, 'Bruno', 'Baker')
Insert into Students (StudentNumber, FirstName, LastName)
Values(3, 'Amano', 'Yoshitaka')

Insert into ClassRegistration (StudentIDNumber, CourseNumber)
Values(1, 1212)
Insert into ClassRegistration (StudentIDNumber, CourseNumber)
Values(2, 1213)
Insert into ClassRegistration (StudentIDNumber, CourseNumber)
Values(3, 2215)

Delete from Students
Where StudentNumber = 1

Delete from Classes
Where CourseNumber = 2215

Delete from Classes
Where CourseNumber = 1212