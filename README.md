 Example (ERD-Conceptual-Guide)
students(student_id PK, first_name, last_name, email UNIQUE, enrollment_year CHECK ≥ 2000)
Instructors(instructor_id PK, first_name, last_name, email UNIQUE, hire_date≥ 2000)
Courses(course_id PK, course_code UNIQUE, title, credits CHECK 1–6)
Enrollments(enrollment_id PK, student_id FK  Students, course_id FK  Courses, term, grade, 
UNIQUE(student_id, course_id, term))
(Optional) Teaches(instructor_id FK, course_id FK, term, PK(instructor_id, course_id, term))# ERD-Conceptual-Guide-
