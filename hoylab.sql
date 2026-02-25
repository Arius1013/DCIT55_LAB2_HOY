CREATE SCHEMA `hoy`;
-- CREATE TABLE --
create table tblStudent(
studentNumber INT(11) auto_increment primary key,
firstName VARCHAR(100),
lastName VARCHAR(100) not null,
middleName VARCHAR(100),
birthdate VARCHAR(20),
citizenship VARCHAR(50) comment "Examnple: Filipino, Nigerian, Korean",
gender VARCHAR(100) comment "Male or Famale"
);
SHOW FULL COLUMNS FROM tblStudent;

-- INSERT INTO TABLE --
INSERT INTO tblStudent (studentNumber, firstName, lastName, middleName, birthdate, citizenship, gender)
    VALUES  (202014912, 'STEVEN', 'ESPEDIDO', 'ROSALDO', '2000-01-01', 'FILIPINO', 'MALE'),
			(202014165, 'NINA KLARISSE', 'ULANGKAYA', 'AMBROSIO', '2000-01-02', 'FILIPINO', 'FEMALE'),
            (202011535, 'ADRIAN', 'CARRANZA', 'RUBIA', '2000-01-03', 'FILIPINO', 'MALE'),
			(202011818, 'JEAN', 'DACLES', 'RICO', '2000-01-04', 'FILIPINO', 'FEMALE'),
			(202012336, 'GILLIAN KYLE', 'CATAHAN', 'DIMAALA', '2000-01-05', 'FILIPINO', 'MALE');

SELECT * from studentinfo;	

-- ALTER CHANGE --
ALTER TABLE tblStudent CHANGE gender sex VARCHAR(6);
ALTER TABLE tblStudent CHANGE birthdate birthdate DATE;
ALTER TABLE tblStudent CHANGE citizenship citizenship VARCHAR(20);
-- ALTER ADD --
ALTER TABLE tblStudent ADD age INT(3) AFTER birthdate;
-- ALTER RENAME -
ALTER TABLE tblStudent RENAME studentinfo;

-- SELECT/DISPLAY --
-- A --
SELECT  studentNumber,
        CONCAT(firstName, ' ', middleName, ' ', lastName) AS fullName
FROM studentinfo;
-- B --
SELECT studentNumber, 
	   firstName, 
	   lastName, 
       middleName, 
	   birthdate,
	REPLACE(citizenship, 'FILIPINO', 'PINOY') AS citizenship, sex
FROM studentinfo;
-- C --
SELECT studentNumber,
		CONCAT(firstName, ' ', middleName, ' ', lastName) AS fullName
FROM studentinfo;
-- D --
SELECT 
	REPEAT(lastName, 5) AS repeatedLastName
	FROM studentinfo;
    
SELECT 
AVG(age) AS averageAge
FROM studentinfo;
                
SELECT 
		studentNumber, 
		firstName, 
		lastName, 
		DATE_FORMAT(birthdate, '%M %d, %Y') AS formattedBirthdate
	FROM studentinfo;
                
SELECT
		sex,
		COUNT(*) AS total
FROM studentinfo
GROUP BY sex;
                
SELECT * FROM studentinfo
	ORDER BY lastName ASC;

