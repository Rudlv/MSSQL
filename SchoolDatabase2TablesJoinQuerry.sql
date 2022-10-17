------Joined two tables and sorted by student birthday.------

SELECT firstName AS Name, lastName as Surname, dateBirth AS Birthday, Courses.category AS 'Course Type'  FROM Students
INNER JOIN Courses
ON courseId = Courses.id
ORDER BY dateBirth;