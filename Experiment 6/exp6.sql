--Q1
SELECT * FROM ROUTE_HEADER WHERE ORIGIN = 'Madras' AND DESTINATION = 'Cochin';

--Q2
SELECT * FROM ROUTE_HEADER WHERE ORIGIN LIKE 'M%';

--Q3
SELECT * FROM ROUTE_HEADER WHERE FARE BETWEEN 30 AND 50;

--Q4
SELECT FARE, ORIGIN FROM ROUTE_HEADER WHERE ROUTE_ID > 15;

--Q5
SELECT * FROM PLACE_HEADER WHERE PLACE_NAME LIKE 'M%';

--Q6
SELECT * FROM ROUTE_HEADER WHERE DISTANCE BETWEEN 200 AND 400;

--Q7
SELECT * FROM FLEET_HEADER WHERE ROUTE_ID = 102 OR ROUTE_ID = 103;

--Q8
SELECT * FROM ROUTE_DETAIL WHERE Nonstop = 'N';

--Q9
SELECT * FROM CATEGORY_HEADER WHERE CAT_DESC LIKE 's%t';

--Q10
SELECT * FROM ROUTE_HEADER WHERE CAT_CODE = 1 OR CAT_CODE = 2 OR CAT_CODE = 4;

--Q11
SELECT * FROM PLACE_HEADER WHERE BUS_STATION = 'Charminar';

--Q12
SELECT * FROM ROUTE_HEADER WHERE FARE < 70 AND DISTANCE > 120;

--Q13
SELECT * FROM TICKET_DETAIL WHERE SEX = 'F' AND AGE > 10;

--Q14
UPDATE TICKET_HEADER SET FARE = FARE*1.1;
SELECT FARE FROM TICKET_DETAIL;

--Q15
SELECT * FROM ROUTE_HEADER WHERE ROUTE_ID = 101 OR ROUTE_ID = 105 OR ROUTE_ID = 107;

--Q16
SELECT * FROM ROUTE_HEADER WHERE ORIGIN = 'Madras' AND DISTANCE > 300 OR DESTINATION = 'Madras' AND Distance < 300;

--Q17
CREATE TABLE temp_MPSTME(
PLACE_ID number(5,0),
PLACE_NAME varchar(20),
PLACE_ADDRESS varchar(50));

--Q18
INSERT INTO temp_MPSTME (PLACE_ID, PLACE_NAME, PLACE_ADDRESS) SELECT PLACE_ID, PLACE_NAME, PLACE_ADDRESS FROM PLACE_HEADER WHERE PLACE_ID BETWEEN 1 AND 4 AND PLACE_NAME LIKE 'M%';

SELECT * FROM temp_MPSTME;













































