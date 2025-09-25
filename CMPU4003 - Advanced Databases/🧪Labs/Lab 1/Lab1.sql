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








