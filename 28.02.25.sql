USE [Academy24.02]

--6
SELECT Departments.Name as 'Department' , Groups.Name as 'Group'
FROM Departments, Groups
WHERE Groups.DepartmentId = Departments.Id

--7
SELECT Subjects.Name
FROM Subjects, Teachers, Lectures
WHERE Lectures.TeacherId = Teachers.Id AND Lectures.SubjectId = Subjects.Id AND Teachers.Name = 'Samantha' AND Teachers.Surname = 'Adams'

--8
SELECT Departments.Name 
FROM Departments, Groups, GroupsLectures, Lectures, Subjects
WHERE Lectures.SubjectId = Subjects.Id AND GroupsLectures.LectureId = Lectures.Id AND GroupsLectures.GroupId = Groups.Id AND Groups.DepartmentId = Departments.Id AND Subjects.Name = 'Database Theory'

--9
SELECT Groups.Name 
FROM Groups, Departments, Faculties
WHERE Groups.DepartmentId = Departments.Id AND Departments.FacultyId = Faculties.Id AND Faculties.Name = 'Computer Science'

--10
SELECT Groups.Name as 'Groups', Faculties.Name as 'Faculty'
FROM Groups, Departments, Faculties
WHERE Groups.DepartmentId = Departments.Id AND Departments.FacultyId = Faculties.Id AND Groups.Year = 5

--11
SELECT Teachers.Name + ' ' + Teachers.Surname as 'Teacher', Subjects.Name, Groups.Name
FROM Teachers, Subjects, Groups, Lectures, GroupsLectures
WHERE Lectures.TeacherId = Teachers.Id AND Lectures.SubjectId = Subjects.Id AND GroupsLectures.LectureId = Lectures.Id AND GroupsLectures.GroupId = Groups.Id AND Lectures.LectureRoom = 'B103'
