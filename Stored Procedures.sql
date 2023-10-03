CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(255),
    Course VARCHAR(250)
);

DELIMITER //

CREATE PROCEDURE InsertStudent(
    IN StudentName VARCHAR(255),
    IN Course VARCHAR(250)
)
BEGIN
    INSERT INTO Students (StudentName, Course)
    VALUES ('Ali', 'Application Software'), 
           ('Ahmed', 'DISM'), 
           ('Aisha', 'CPISM'),
           ('Amna', 'Web Development'), 
           ('Abdullah', 'Web Designing');
END;
//

DELIMITER ; DROP TABLE InsertStudents

DELIMITER //

CREATE PROCEDURE DeleteStudent(
    IN StudentID INT
)
BEGIN
    DELETE FROM Students WHERE StudentID = StudentID;
END;
//

DELIMITER ;

DELIMITER //

CREATE PROCEDURE UpdateStudent(
    IN StudentID INT,
    IN StudentName VARCHAR(255),
    IN Course VARCHAR(250)
)
BEGIN
    UPDATE Students
    SET StudentName = 'Aisha Khan',
        Course = 'Application Software'
    WHERE StudentID = 3;
END;
//

DELIMITER ;

DELIMITER //

CREATE PROCEDURE SelectAllStudents()
BEGIN
    SELECT * FROM Students;
END;
//

DELIMITER ;

DELIMITER //

CREATE PROCEDURE SearchStudentByName(
    IN StudentName VARCHAR(255)
)
BEGIN
    SELECT * FROM Students WHERE StudentName LIKE CONCAT('%', StudentName, '%');
END;
//

DELIMITER ;
