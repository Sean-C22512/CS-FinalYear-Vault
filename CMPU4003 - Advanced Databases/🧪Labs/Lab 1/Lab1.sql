--DROP TABLE IF EXISTS students CASCADE; 
CREATE TABLE students 
( 	student_id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	university TEXT NOT NULL,
	profile JSONB NOT NULL DEFAULT '{}'::jsonb 
);

--DROP TABLE IF EXISTS enrollments;
CREATE TABLE enrollments 
(   enrollment_id BIGSERIAL PRIMARY KEY, 
	student_id INT REFERENCES students(student_id), 
	subject_code TEXT NOT NULL, 
	year INT NOT NULL, 
	semester INT NOT NULL, 
	grades JSONB NOT NULL -- stores assignments, exams, comments 
);

-- Insert Sample Data
INSERT INTO students (name, university, profile) 
VALUES ('Alice Johnson', 'TU Dublin', '{"age":22,"major":"CS","languages":["en","fr" ]}'), 
('Brian Smith', 'UCD', '{"age":24,"major":"Math","sports":["football"] }'), 
('Chloe Lee', 'Trinity', '{"age":21,"major":"Engineering","exchange":true}');

INSERT INTO enrollments (student_id, subject_code, year, semester, grades) 
VALUES (1, 'DB4003', 2023, 1, '{"midterm":78,"final":85,"remarks":"Good progress"}') ,
(1, 'ML4001', 2023, 2, '{"assignments":[{"name":"A1","mark":40},{"name":"A2", "mark":45}],"final":82}'), 
(2, 'DB4003', 2023, 1, '{"midterm":65,"final":70,"remarks":"Needs work"}'), 
(3, 'CS4090', 2023, 2, '{"project":{"title":"IoT","mark":88},"oral_exam":90}' );


/*
 * 2.2 JSONB Basics ->> means extract a JSON field as text. 
 * -> means extract a JSON field as JSON. 
 * #> lets you navigate deeper using a path array. 
 * the ? operator means: “Does this JSON object contain the given key?” 
 * :: is the type cast operator.
 
 * */

-- Extract fields 
SELECT name, profile->>'major' AS major, (profile->>'age')::int AS age FROM students;

-- Extract fields as Json and text to illustrate the operator 
--no different in visual editor will matter in applications. 
SELECT name, profile->'major' AS major_json, profile->>'major' AS major_text FROM students;

-- Extract fields casting age to be type integer 
SELECT name, profile->>'major' AS major, (profile->>'age')::int AS age FROM students;

-- Does profile contain exchange info?
SELECT name FROM students WHERE profile ? 'exchange'; 

-- Subjects with final mark >= 80 where final is cast as an integer 
SELECT subject_code, (grades->>'final')::int AS final FROM enrollments WHERE (grades->>'final')::int >= 80;

-- Suppose we are looking for students with languages as part of their profile. 
-- We know Alice has a profile with {"languages":["en","fr"]} 
-- profile#>'{languages}' → extracts the whole array as JSON.
-- profile#>>'{languages,0}' → navigates into the array (0 = first element)
-- and returns text
SELECT name, profile#>'{languages}' 
AS langs_json, profile#>>'{languages,0}' 
AS first_lang FROM students 
WHERE profile ? 'languages';


--2.3 Working with Arrays and Nested Objects 
--Expand assignments into rows to get the grades for each assignment for subject ML4001
SELECT e.subject_code, a->>'name' AS assignment, (a->>'mark')::int 
AS mark FROM enrollments e 
CROSS JOIN LATERAL jsonb_array_elements(e.grades->'assignments') a
WHERE subject_code = 'ML4001';

-- Extract project marks 
SELECT subject_code, grades#>>'{project,title}' AS project_title, 
	(grades#>>'{project,mark}')::int AS mark 
FROM enrollments 
WHERE grades ? 'project';



/*
 	2.4 JSONPath Queries A JSON path is like a query language (a bit like XPath for XML)
 	that lets you navigate inside a JSON document. 
 	• Think of a JSON document as a tree of objects and arrays. 
 	• A JSON path is a string (starting with $) that says “go here” inside that tree.
 	
 	Examples: 
 	• $ → the root of the JSON document 
 	• $.assignments → the assignments field 
 	• $.assignments[*].mark → all the mark values inside the assignments array 
 	• $.* → all the fields at the root, whatever their names
*/

-- Students with any grade (for anything assignment, final etc) >= 85 
SELECT enrollment_id, subject_code 
FROM enrollments 
WHERE jsonb_path_exists(grades, '$.* ? (@ >= 85)');

-- For subject ML4001, show every assignment mark stored in the grades JSON.” 
SELECT jsonb_path_query(grades, '$.assignments[*].mark') 
FROM enrollments 
WHERE subject_code = 'ML4001';

-- 2.5 Aggregations
-- Average final grade per university 
SELECT s.university, AVG((e.grades->>'final')::int) 
FROM students s 
JOIN enrollments e ON s.student_id = e.student_id 
WHERE e.grades ? 'final' GROUP BY s.university;

-- Best student per subject
SELECT subject_code, student_id, MAX((grades->>'final')::int) AS best 
FROM enrollments 
WHERE grades ? 'final' 
GROUP BY subject_code, student_id;


-- 2.6 Updates
-- Add exchange flag for all UCD students
UPDATE students SET profile = profile || '{"exchange": false}'
WHERE university = 'UCD';

-- Update a nested grade
UPDATE enrollments SET grades = jsonb_set(grades, '{final}', '90') 
WHERE subject_code = 'DB4003' AND student_id = 2;

-- Remove remarks for enrollments in subject DB4003
UPDATE enrollments 
SET grades = grades - 'remarks' 
WHERE subject_code = 'DB4003';







