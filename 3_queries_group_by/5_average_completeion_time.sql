SELECT students.name AS student, avg(assignment_submissions.duration) as average_time
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_time DESC;