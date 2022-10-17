------- Sorted table by a price threshhold and ordered by descending order.--------
SELECT title AS 'Course Name', cost AS 'Price', Teachers.lastName AS 'Teacher:', Teachers.phone AS 'Contact' FROM Courses 
INNER JOIN Teachers
ON courseId1 = Courses.id OR courseId2 = Courses.id OR courseId3 = Courses.id
WHERE cost >= 30000
ORDER BY cost DESC