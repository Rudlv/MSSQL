
-------Joined 3 tables to display all students enrolled under one teacher.-----------


SELECT Students.firstName + ' ' + Students.lastName AS 'Student Name',
Courses.title AS 'Course Name',
Teachers.firstName + ' ' + Teachers.lastName AS 'Teacher Name',
Teachers.phone AS 'Phone Number' 
FROM Students
INNER JOIN Courses
ON Students.courseId = Courses.id
INNER JOIN Teachers 
ON courseId1 = Courses.id OR courseId2 = Courses.id OR courseId3 = Courses.id
WHERE Teachers.lastName = 'Laing'
ORDER BY Students.firstName ASC;