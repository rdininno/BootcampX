SELECT students.name AS student, avg(assignment_submissions.duration) as average_time, avg(assignments.duration) as average_suggested
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments on assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) <= avg(assignments.duration)
ORDER BY average_time;