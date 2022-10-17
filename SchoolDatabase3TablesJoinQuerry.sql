
-------Joined 3 tables to display each student's names, what class they take, it's cost and the teacher's details.-----

SELECT Students.firstName + ' ' + Students.lastName AS 'Student Name',
Courses.title AS 'Course Name',
Courses.cost AS 'Price' ,
Teachers.firstName + ' ' + Teachers.lastName AS 'Teacher Name',
Teachers.phone AS 'Phone Number' 
FROM Students
INNER JOIN Courses
ON Students.courseId = Courses.id
INNER JOIN Teachers
ON courseId1 = Courses.id OR courseId2 = Courses.id OR courseId3 = Courses.id
ORDER BY Courses.cost ASC;