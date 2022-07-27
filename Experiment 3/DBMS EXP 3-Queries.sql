SELECT * FROM Category_Header;

SELECT Place_name, Place_address FROM Place_Header;

UPDATE route_header SET fare=fare+10;
ALTER TABLE ROUTE_HEADER RENAME COLUMN FARE TO NEW_FARE;

SELECT DISTINCT Destination FROM Route_header;

DESC route_detail;

UPDATE ticket_detail SET Fare=fare+1 WHERE Name = 'Guatham';
SELECT * FROM Ticket_detail;

UPDATE ticket_detail SET Age=30 WHERE Name = 'Anand';
SELECT * FROM ticket_detail;

INSERT INTO route_detail VALUES (105,01,'S');
SELECT * FROM Route_detail;

DELETE FROM Route_detail WHERE route_id = 105 AND nonstop ='S';
SELECT * FROM Route_detail;

--Reyansh Gupta
