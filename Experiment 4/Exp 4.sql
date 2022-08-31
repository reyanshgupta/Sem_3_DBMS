ALTER TABLE Category_header 
modify cat_desc varchar(50);
desc category_header;


CREATE TABLE Student_mpstme (
stu_no int,
stu_name varchar(50),
stu_address varchar(50),
stu_contact int
);
desc student_mpstme;

ALTER TABLE Student_mpstme 
MODIFY stu_no int primary key;
desc student_mpstme;

CREATE TABLE Student_nmims as (
SELECT stu_no, stu_name from student_mpstme);
desc Student_nmims;

RENAME Student_mpstme  to stu_mpstme;
desc stu_mpstme;

ALTER TABLE stu_mpstme
add date_of_birth date;
desc stu_mpstme;

ALTER TABLE Stu_mpstme 
DROP COLUMN Stu_contact;
desc stu_mpstme;

DROP TABLE stu_mpstme;