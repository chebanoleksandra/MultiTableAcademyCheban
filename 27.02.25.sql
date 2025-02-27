USE [Academy24.02]

--1
SELECT Teachers.Name as 'Teacher', Groups.Name as 'Group'
FROM Teachers, Groups, Lectures, GroupsLectures
WHERE GroupsLectures.GroupId = Groups.Id AND GroupsLectures.LectureId = Lectures.Id AND Lectures.TeacherId = Teachers.Id

--2
SELECT Departments.Name, Departments.Financing
FROM Departments, Faculties
WHERE Departments.FacultyId = Faculties.Id AND Departments.Financing > Faculties.Financing

--3
SELECT Curators.Name as 'Curator', Groups.Name as 'Group'
FROM Curators, Groups, GroupsCurators
WHERE GroupsCurators.CuratorId = Curators.Id AND GroupsCurators.GroupId = Groups.Id

--4
SELECT Teachers.Name, Teachers.Surname
FROM Teachers, Groups, Lectures, GroupsLectures
WHERE GroupsLectures.GroupId = Groups.Id AND GroupsLectures.LectureId = Lectures.Id AND Lectures.TeacherId = Teachers.Id AND Groups.Name = 'P107'

--5
SELECT Teachers.Name as 'Teacher', Faculties.Name as 'Faculty'
FROM Teachers, Faculties, Lectures, GroupsLectures, Groups, Departments
WHERE GroupsLectures.LectureId = Lectures.Id AND Lectures.TeacherId = Teachers.Id AND GroupsLectures.GroupId = Groups.Id AND Groups.DepartmentId = Departments.Id AND Departments.FacultyId = Faculties.Id