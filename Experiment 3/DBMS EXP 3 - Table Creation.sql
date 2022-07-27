INSERT INTO Category_Header VALUES(&Cat_code,&cate_Desc);
SELECT * FROM Category_Header;

INSERT INTO Route_Header VALUES(&Route_id,&route_no,&cate_code,&origin,&destination,&fare,&distance,&capacity);
SELECT * FROM Route_header;

INSERT INTO Place_header VALUES(&place_id,&place_name,&place_address,&bus_station); 
SELECT * FROM Place_header;

INSERT INTO Fleet_header VALUES(&Fleet_id,&DAY, &Route_id, &Cat_code);
SELECT * FROM Fleet_header; 

INSERT INTO Ticket_header VALUES(&fleet_id, &ticket_no,&doi,&dot,&time_travel,&board_place,&origin,&destination,&adults,&children,&total_fare,&route_id);
SELECT * FROM Ticket_header;

INSERT INTO Ticket_Detail VALUES (&Ticket_No, &Name, &Sex, &age, &fare);
SELECT * FROM Ticket_Detail;

INSERT INTO Route_detail VALUES(&Route_id,&place_id,&Nonstop);
SELECT * FROM Route_detail;


--Reyansh Gupta
