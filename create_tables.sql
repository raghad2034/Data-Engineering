
CREATE TABLE Dim_Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    major VARCHAR(50)
);

CREATE TABLE Dim_Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credit_hours INT
);

CREATE TABLE Dim_Grades (
    grade_id INT PRIMARY KEY,
    grade_letter VARCHAR(5),
    grade_points FLOAT
);


CREATE TABLE Fact_Registration (
    registration_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade_id INT,
    performance_score FLOAT,
    FOREIGN KEY (student_id) REFERENCES Dim_Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Dim_Courses(course_id),
    FOREIGN KEY (grade_id) REFERENCES Dim_Grades(grade_id)
);
