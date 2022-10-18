--Creation
CREATE TABLE EMP(Name Varchar(20), SSN Number(10) PRIMARY KEY,Address Varchar(25), Salary Number(10), SuperSSN Number(10), Gender Varchar(5), Dno Number(10),FOREIGN
KEY(Dno)REFERENCES DEPT(Dno));
CREATE TABLE DEPT(DNum VARCHAR(10), DName VARCHAR(20), MGRSSN Number(20), Dno Number(10) PRIMARY KEY, FOREIGN KEY (Dnum) REFERENCES DEPT_LOC(Dnum));
CREATE TABLE DEPT_LOC(Dnum VARCHAR(10) PRIMARY KEY, DLocation VARCHAR(25));
CREATE TABLE DEPENDENT (ESSN Number(15) PRIMARY KEY, Dep_name Varchar(15),Sex Varchar(10), FOREIGN KEY (ESSN) REFERENCES EMP(SSN));
CREATE TABLE WORKS_ON(ESSN Number(15), Pno Number(13), Hours Number(10), FOREIGN KEY (ESSN) REFERENCES DEPENDENT(ESSN));
CREATE TABLE PROJECT (Pname VARCHAR(25), Pnumber Number(10), Plocation VARCHAR(25), Dnum VARCHAR(10), FOREIGN KEY (Dnum) REFERENCES DEPT_LOC(Dnum));
--Insertion
INSERT INTO EMP VALUES ('&NAME', &SSN, '&ADDRESS', &SALARY, &SUPERSSN, '&GENDER', &DNO);
INSERT INTO DEPT VALUES(&DNUM, '&DNAME', &MGRSSN, &DNO);
INSERT INTO DEPT_LOC VALUES(&DNUM, '&DLOCATION');
INSERT INTO DEPENDENT VALUES(&ESSN, '&DNAME', '&SEX');
INSERT INTO WORKS_ON VALUES(&ESSN, &PNO, &HOURS);
INSERT INTO PROJECT VALUES ('&PNAME', &PNUMBER, '&PLOCATION', &DNUM);

--View tables
SELECT * FROM DEPT;
SELECT * FROM EMP;
SELECT * FROM DEPT_LOC;
SELECT * FROM DEPENDENT;
SELECT * FROM WORKS_ON;
SELECT * FROM PROJECT;

--Queries
--1--
SELECT NAME, ADDRESS, SALARY FROM EMP NATURAL JOIN DEPT WHERE DName='Research';
--2--
SELECT Name FROM EMP INNER JOIN PROJECT ON Emp.dno=project.dnum WHERE Dno=4;
--3--
SELECT SSN FROM EMP WHERE DNO=4 UNION SELECT ESSN FROM DEPENDENT NATURAL JOIN DEPT_LOC WHERE DNUM=4;
--5--
 SELECT DNO, COUNT(*), AVG(SALARY) FROM EMP GROUP BY DNO;
 --9 --
 SELECT NAME FROM EMP WHERE GENDER = 'F' AND SALARY>50000 AND Dno = 20;
 --10 --
 SELECT * FROM DEPT NATURAL JOIN DEPT_LOC WHERE Dname='CSE';
 