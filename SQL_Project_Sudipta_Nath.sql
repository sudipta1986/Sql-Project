-- This is a hotel data base where have some information of luxurious hotel one of them is Grosvenor Hotel and many others. We have four table like booking,guest,
-- hotel and room. We have all information about respected table. We are going to perform some query in this database.


create database luxurious_hotel;
-- Create the Database as luxurious_hotel
use luxurious_hotel;
-- use the database to create table under the luxurious_hotel Database

CREATE TABLE Hotel ( hotel_no CHAR(10) NOT NULL, name VARCHAR(30) NOT NULL, address
VARCHAR(50) NOT NULL, primary key (hotel_no));
-- Create a table as hotel.

insert into hotel values ('G111', 'Grosvenor Hotel','London'),
('B325', 'Britannia Hotel','Manchester'),
('C179', 'Corinthia London','London'),
('L257', 'The Liner Hotel','Liver Pool'),
('D471', 'The Dorchester','London');
-- Insert the value of the hotel as mention, and I have insert some more figure in to this table because i think it's required.

select * from hotel;
-- For check the hotel details.

CREATE TABLE room ( room_no VARCHAR(6) NOT NULL, hotel_no CHAR(4) NOT NULL,category varchar(20), price DECIMAL(8,2) NOT NULL, primary key (room_no,hotel_no),
foreign key (hotel_no) references hotel(hotel_no));
-- Create another table as room.
 
INSERT INTO room VALUES ('S101', 'B325','Single',2500.00),
('D205', 'B325','Double',3150.00),
('K309', 'B325','King',4700.00),
('Q601', 'B325','Queen',6200.00),
('PS710', 'B325','President Suite',7350.00),
('S309', 'C179','Single',2800.00),
('D701', 'C179','Double',3350.00),
('K555', 'C179','King',5775.00),
('Q474', 'C179','Queen',6250.00),
('PS925', 'C179','President Suite',9670.00),
('S111', 'D471','Single',3250.00),
('D326', 'D471','Double',5545.00),
('K575', 'D471','King',7290.00),
('Q733', 'D471','Queen',8350.00),
('PS652','D471','President Suite',9647.00),
('S212', 'G111','Single',3850.00),
('D373', 'G111','Double',5580.00),
('K535', 'G111','King',6750.00),
('Q694', 'G111','Queen',8100.00),
('PS461', 'G111','President Suite',9500.00),
('SD215', 'G111','Standard room',2200.00),
('HT377', 'G111','Hollywood twin',3375.00),
('DX549', 'G111','Deluxe room',4760.00),
('SU760', 'G111','Suite',5255.00),
('PH405', 'G111','Penthouse',6285.00),
('S115', 'L257','Single',3150.00),
('D213','L257','Double',5885.00),
('K419', 'L257','King',7460.00),
('Q509', 'L257','Queen',7840.00),
('PS717', 'L257','President Suite',8980.00);
-- Insert figures in Room Table through insert command.
 

CREATE TABLE booking (hotel_no CHAR(4) NOT NULL, guest_no CHAR(4) NOT NULL, date_from
DATETIME NOT NULL, date_to DATETIME NULL, room_no CHAR(6) NOT NULL, primary key (guest_no));
-- Create a table name Booking as it's mention.
 
INSERT INTO booking VALUES ('G111','G305','1999-01-01 6:30:33','1999-01-02 10:05:02','DX549'),
('G111', 'G308','1999-01-05 12:33:35','1999-01-08 08:10:05','SD215'),
('G111', 'G310','1999-05-01 08:40:37','1999-05-10 11:03:09','D373'),
('G111', 'G309','1999-04-15 05:45:20','1999-04-30 09:08:01','Q694'),
('G111', 'G306','1999-02-20 07:15:11','1999-03-12 10:05:02','SU760'),
('G111', 'G311','2000-01-01 08:22:31','2000-01-10 09:05:02','S212'),
('G111', 'G312','2000-01-11 07:22:31','2000-01-12 11:05:02','D373'),
('G111', 'G355','2000-01-18 05:43:11',null,'SD215'),
('G111', 'G313','2001-02-02 06:53:11','2000-02-10 10:05:02','Q694'),
('G111', 'G314','2001-02-15 08:22:31','2000-02-19 10:05:02','S212'),
('G111', 'G315','2002-03-03 11:20:12','2000-03-13 11:07:05','SU760'),
('G111', 'G357','2002-04-05 09:11:07','2000-04-07 12:09:01','SD215'),
('G111', 'G358','2005-04-19 07:24:11','2000-04-27 11:32:14','D373'),
('G111', 'G316','2006-05-10 05:14:29','2000-05-15 09:08:12','S212'),
('G111', 'G317','2007-06-03 06:55:19','2000-06-11 09:27:04','PS461'),
('G111', 'G318','2008-07-17 12:11:25','2000-07-25 11:36:19','SU760'),
('G111', 'G319','2011-08-22 07:17:21','2000-08-29 12:18:11','S212'),
('G111', 'G320','2012-09-21 06:16:21','2000-09-27 11:15:33','SD215'),
('G111', 'G321','2013-10-10 07:48:55','2000-10-19 12:39:54','DX549'),
('G111', 'G322','2014-11-05 09:55:45','2000-11-09 07:47:41','SD215'),
('G111', 'G323','2015-12-11 06:44:37','2000-12-22 10:19:29','SU760'),
('G111', 'G324','2021-08-15 08:22:31','2000-02-19 10:05:02','S212'),
('G111', 'G325','2022-05-15 05:49:51','2022-05-21 11:22:12','Q694'),
('G111', 'G326','2003-04-10 06:40:31','2003-04-17 08:19:12','S212'),
('G111', 'G327','2003-08-25 07:44:15','2003-09-05 06:39:22','PH405'),
('G111', 'G328','2004-01-24 05:10:14','2004-02-11 09:25:42','HT377'),
('G111', 'G329','2004-09-06 05:40:31','2004-09-16 05:55:42','SD215'),
('G111', 'G330','2005-07-06 04:32:30','2005-07-19 09:49:42','Q694'),
('G111', 'G331','2006-10-09 07:45:01','2006-10-23 09:59:11','K535'),
('G111', 'G332','2007-08-18 05:40:31','2007-08-30 08:45:34','S212'),
('G111', 'G333','2008-02-02 06:41:22','2008-02-20 09:49:58','HT377'),
('G111', 'G334','2009-04-14 05:40:31','2009-04-24 09:47:32','PH405'),
('G111', 'G335','2009-07-15 05:40:31','2009-07-21 11:21:22','D373'),
('G111', 'G336','2010-01-04 07:44:11','2011-01-12 10:24:21','SD215'),
('G111', 'G337','2010-06-21 06:35:47','2010-06-27 12:25:22','HT377'),
('G111', 'G338','2011-03-15 06:40:21','2011-04-01 07:49:32','DX549'),
('G111', 'G339','2012-05-07 06:21:31','2012-05-24 09:34:22','SD215'),
('G111', 'G340','2013-03-13 06:25:44','2013-03-25 07:49:32','HT377'),
('G111', 'G356','2013-05-19 05:43:11',null,'S212'),
('G111', 'G341','2014-02-10 07:31:48','2014-02-18 10:34:17','K535'),
('G111', 'G342','2015-01-11 05:15:27','2015-02-01 10:21:43','PH405'),
('G111', 'G343','2016-04-10 09:18:47','2016-04-14 11:45:40','SU760'),
('G111', 'G344','2016-08-19 08:51:41','2016-08-26 12:16:45','PS461'),
('G111', 'G345','2017-05-25 09:14:21','2017-05-30 11:51:24','K535'),
('G111', 'G346','2017-09-14 06:49:11','2017-09-23 10:19:34','SD215'),
('G111', 'G347','2018-01-07 07:39:41','2018-01-14 11:34:12','PH405'),
('G111', 'G348','2018-06-22 06:49:11','2018-06-28 10:41:24','D373'),
('G111', 'G349','2019-04-11 09:19:21','2019-04-17 12:11:34','S212'),
('G111', 'G350','2019-07-09 05:11:31','2019-07-17 10:41:15','PS461'),
('G111', 'G351','2020-06-24 07:17:54','2020-06-28 11:05:10','K535'),
('G111', 'G352','2020-07-04 09:17:24','2020-07-15 11:41:30','SD215'),
('G111', 'G353','2021-01-10 07:15:41','2021-01-22 11:12:35','D373'),
('G111', 'G354','2022-01-02 06:33:27','2022-01-18 10:41:17','K535'),
('B325', 'B101','1992-01-01 05:34:21','1992-01-21 11:44:14','S101'),
('B325', 'B102','1997-05-07 09:14:22','1997-05-11 11:49:21','K309'),
('B325', 'B103','2001-01-01 06:25:11','2001-01-07 11:01:14','D205'),
('B325', 'B112','2002-03-23 05:37:23',null,'S101'),
('B325', 'B104','2017-10-12 09:47:22','2017-10-19 07:45:19','Q601'),
('B325', 'B105','2003-03-03 05:34:21','2003-03-13 09:17:41','K309'),
('B325', 'B106','2015-07-17 04:30:20','2015-07-30 10:17:39','S101'),
('B325', 'B107','2005-02-04 05:34:21','2005-02-22 09:41:17','PS710'),
('B325', 'B108','2020-04-14 07:34:27','2020-04-21 10:01:29','D205'),
('B325', 'B109','2007-01-10 05:13:21','2007-01-15 11:25:49','Q601'),
('B325', 'B110','2010-09-11 06:37:11','2010-09-17 10:45:27','PS710'),
('B325', 'B111','2010-04-24 04:40:41',null,'Q601'),
('C179', 'C550','1995-01-14 05:30:22','1995-01-20 11:10:14','S309'),
('C179', 'C556','1990-03-19 06:33:21','1990-03-27 10:10:24','PS925'),
('C179', 'C562','2009-07-29 06:33:21',null,'S309'),
('C179', 'C557','2010-02-10 07:37:12','2010-02-16 08:15:19','D701'),
('C179', 'C558','2011-04-14 09:33:22','2011-04-19 11:10:29','K555'),
('C179', 'C559','2012-08-21 05:49:10','2012-09-10 11:32:09','PS925'),
('C179', 'C560','2013-05-14 09:47:32','2013-05-25 08:25:39','Q474'),
('C179', 'C561','2015-06-17 09:02:37','2015-06-27 10:21:51','S309'),
('C179', 'C563','2016-06-14 06:33:21',null,'K555'),
('D471', 'D301','1993-02-14 05:31:21','1993-02-20 09:17:12','S111'),
('D471', 'D302','1992-03-11 06:35:23','1992-03-15 07:10:19','D326'),
('D471', 'D303','2001-04-04 05:13:03','2001-04-11 11:10:14','Q733'),
('D471', 'D311','2002-04-16 06:18:03',null,'K575'),
('D471', 'D304','2003-08-10 06:40:14','2003-08-15 08:15:17','PS652'),
('D471', 'D305','2004-09-24 07:42:11','2004-10-01 11:20:15','K575'),
('D471', 'D306','2005-05-15 06:38:25','2005-05-20 09:13:24','S111'),
('D471', 'D307','2006-07-11 09:24:11','2006-07-21 11:40:44','D326'),
('D471', 'D308','2007-09-04 08:17:20','2007-09-14 09:17:23','Q733'),
('D471', 'D309','2009-01-22 08:31:21','2009-01-27 09:11:17','PS652'),
('D471', 'D310','2011-11-12 06:22:21','2011-11-22 11:01:15','K575'),
('D471', 'D312','2014-08-15 06:18:03',null,'S111'),
('L257', 'L701','1989-01-18 06:33:51','1989-02-03 09:27:42','S115'),
('L257', 'L702','1990-06-11 07:36:17','1990-06-23 10:25:37','K419'),
('L257', 'L703','2000-01-25 06:45:50','2000-01-29 09:34:30','D213'),
('L257', 'L704','2001-04-06 05:35:15','2001-04-22 09:37:21','S115'),
('L257', 'L705','2003-07-13 06:50:14','2003-07-25 10:24:13','Q509'),
('L257', 'L706','2005-08-12 04:40:19','2005-08-16 11:04:10','K419'),
('L257', 'L707','2007-06-27 08:16:41','2007-08-30 09:10:23','PS717'),
('L257', 'L708','2009-09-04 06:02:14','2009-09-15 10:15:21','K419'),
('L257', 'L709','2011-06-17 05:55:15','2011-06-29 10:36:19','Q509'),
('L257', 'L714','2012-09-06 07:15:19',null,'S115'),
('L257', 'L710','2013-07-16 06:05:13','2013-07-23 09:48:15','D213'),
('L257', 'L711','2015-04-14 07:38:37','2015-04-22 10:31:22','PS717'),
('L257', 'L712','2017-02-22 05:15:19','2017-02-27 10:12:23','S115'),
('L257', 'L713','2002-11-26 07:15:19',null,'PS717');

-- I have inserted so many figure in Booking table for get the better result.

CREATE TABLE guest ( guest_no CHAR(6) NOT NULL, name VARCHAR(20) NOT NULL, address
VARCHAR(50) NOT NULL, foreign key (guest_no) references booking(guest_no));
-- Create a Guest table as mention.

INSERT INTO guest VALUES ('G305','John Smith','London'),
('G308','Alice Williams', 'Liverpool'),
('G310','Alison Harris', 'Bristol'),
('G309','Angela Thomas', 'Sheffield'),
('G306','Angelique Robinson', 'Liverpool'),
('G311','Ashley Walker', 'London'),
('G312','Beatric Scott', 'London'),
('G313','Beverly Nelson', 'Bristol'),
('G314','Brian Mitchell', 'London'),
('G315','Christina Morgan', 'Liverpool'),
('G355','Chrysta Cooper', 'Bristol'),
('G356','Clark Howard', 'London'),
('G316','Claude Davis', 'Wigan'),
('G317','Daisy Miller', 'London'),
('G318','Dan Martin', 'London'),
('G319','Danna Smith', 'Wigan'),
('G320','Dave Anderson', 'London'),
('G321','Deborah White', 'Birmingham'),
('G322','Debra Perry', 'Wigan'),
('G323','Ethan Clark', 'London'),
('G324','Everett Richards', 'Coventry'),
('G325','Gabriela Wheeler', 'London'),
('G326','Gemma Warburton', 'London'),
('G327','Gilbert Stanley', 'Coventry'),
('G328','Glen Holland', 'London'),
('G329','Gloria Terry', 'Wigan'),
('G330','Graciela Shelton', 'London'),
('G331','Harold Miles', 'Fife'),
('G332','Isabel Lucas', 'London'),
('G333','Ivan Fletcher', 'Coventry'),
('G334','Jaime Parks', 'London'),
('G335','Janet Norris', 'Birmingham'),
('G336','Jerry Guzman', 'London'),
('G337','Jessie Daniel', 'Coventry'),
('G338','Jorge Newton', 'London'),
('G339','Joshua Potter', 'Fife'),
('G340','Juliana Francis', 'Coventry'),
('G341','Julie Erickson', 'London'),
('G342','Katelynn Norman', 'Birmingham'),
('G343','Kathie Moody', 'London'),
('G344','Katrina Lindsey', 'Birmingham'),
('G345','Keith Gross', 'London'),
('G346','Lauren Sherman', 'Coventry'),
('G347','Leona Simon', 'London'),
('G348','Lewis Jones', 'Fife'),
('G349','Liam Brown', 'London'),
('G350','Loretta Garcia', 'London'),
('G351','Lucy Rodriguez', 'Fife'),
('G352','Luisa Lee', 'London'),
('G353','Luna Young', 'Glasgow'),
('G354','Marion Hall', 'London'),
('G355','Bentley KING', 'Oxford'),
('G356','Carlos BAKER', 'London'),
('G357','Jackson Adams', 'Thanet'),
('G358','Milo Brown', 'London'),
('B101','Marshall Allen', 'Birmingham'),
('B102','Melody Lopez', 'London'),
('B103','Mila Green', 'Glasgow'),
('B104','Miles Gonzalez', 'London'),
('B105','Milton Baker', 'London'),
('B106','Miranda Adams', 'Glasgow'),
('B107','Molly Perez', 'London'),
('B108','Morris Campbell', 'Bradford'),
('B109','Nathaniel Shaw', 'London'),
('B110','Neil Gordon', 'Glasgow'),
('B111','Ryker CAMPBELL','Newport'),
('B112','Adriel NELSON', 'Preston'),
('C550','Nick Burns', 'London'),
('C556','Nicole Warren', 'Wakefield'),
('C557','Noel Long', 'London'),
('C558','Orlando Mcdonald', 'London'),
('C559','Perry Gibson', 'London'),
('C560','Phoebe Ellis', 'Bradford'),
('C561','Ramon Fisher', 'London'),
('C562','Arthur HARRIS', 'Cherwell'),
('C563','Isabel GOMEZ', 'London'),
('D301','Rick Reynolds', 'Bradford'),
('D302','Riley Jordan', 'Wakefield'),
('D303','Roberto Hamilton', 'Manchester'),
('D304','Romeo Ford', 'Dudley'),
('D305','Rose Graham', 'London'),
('D306','Sabrina Griffin', 'Manchester'),
('D307','Sebastian Russell', 'London'),
('D308','Seth Foster', 'Dudley'),
('D309','Shawn Butler', 'London'),
('D310','Stella Simmons', 'Manchester'),
('D311','Reese PHILLIPS', 'Lancaster'),
('D312','Emersyn TURNER', 'Dacorum'),
('L701','Stephanie Flores', 'London'),
('L702','Stuart Bennett', 'London'),
('L703','Ted Sanders', 'Dudley'),
('L704','Teresa Hughes', 'Manchester'),
('L705','Tommy Bryant', 'London'),
('L706','Tracey Patterson', 'London'),
('L707','Tristin Matthews', 'Dudley'),
('L708','Troy Jenkins', 'Manchester'),
('L709','Valentina Watkins', 'London'),
('L710','Vera Ward', 'London'),
('L711','Vicki Murphy', 'Wakefield'),
('L712','Wade Bell', 'London'),
('L713','Kylie PARKER', 'Bedford'),
('L714','Norah COLLINS', 'London');
-- Insert figures in the guest table through insert command.

SET SQL_SAFE_UPDATES = 0;
-- use this command to prevent from safe mode.

UPDATE room SET price = price*1.05;
-- We need to update the figures in the price column of Room table used update command to do that.

CREATE TABLE booking_old ( hotel_no CHAR(4) NOT NULL, guest_no CHAR(4) NOT NULL, date_from DATETIME NOT NULL, date_to DATETIME NULL, room_no VARCHAR(6) NOT NULL);
-- I have created a table as booking_old. 

INSERT INTO booking_old SELECT * FROM booking WHERE date_from < DATE '2000-01-01'; 
-- After create booking_old table i need to insert all values from the booking table to booking_old where date_from should before '2000-01-01'. I applied insert
-- command to do that.
 
create temporary table temp_booking select * from booking; 
-- Also I have created a temporary table of booking as temp_booking, so i will do whatever query is needed on temporary table. 
-- Because your original table will be unchanged. 
select * from temp_booking;
-- Just to check the table.

delete from temp_booking where date_from < '2000-01-01'; 
-- Delete all the figures from temp_booking table where date_from should below year of '2000-01-01' as mention.

select * from temp_booking;
-- To check the effect after excute the command.

-- Simple Queries :-

-- 1. List full details of all hotels.
create view hotel_details as
	select h.hotel_no,h.name,h.address,r.room_no,r.price,r.category from room r
	inner join hotel h on h.hotel_no=r.hotel_no
    order by h.name;
-- I have join three tables like Room and Hotel by inner join and kept in viewes for use in future. Also i will provide full details of all hotel. 
    
select * from hotel_details;
-- To check the views.

--  2. List full details of all hotels in London.
select * from hotel_details where address='London';
 -- I applied where clause in viewes of hotel_details in order to get the espected result.
 
-- 3. List the names and addresses of all guests in London, alphabetically ordered by name.
select name,address from guest where address='London';
-- I applied where clause in guest table in order to get the desire result.

-- 4. List all double or family rooms with a price below £40.00 per night, in ascending order of price.
UPDATE room SET price = round(price*0.0104,2);
select * from hotel_details hd where price<40 and category='double'
	order by hd.price asc;
-- Here first I convert all price to pound in room table because it's required also as mention pound. Then I applied where clause and also used 
-- 'AND' operator to add the another filtaretion at the end used order by clause by assending order to get desire result.
 
-- 5. List the bookings for which no date_to has been specified.
select * from booking where date_to is null;

-- To get the desire outcome i applied where clause on booking table.

-- Aggregate Functions :- 

-- 1. How many hotels are there?
select count(h.name) As Count_Of_Hotel
	from hotel h;
-- Here I applied count funtion on Hotel table to get the desire result.

-- 2. What is the average price of a room?
select h.hotel_no,h.name as Hotel_Name,h.address as Hotel_Address,round(avg(price),2) as Avg_Price_Of_Room,h.category as Room_Category
	from hotel_details h;
 -- I select Hotel Number, Hotel name, Hotel Address because only Room avg price is not satisfied answer, also i applied 
 -- round command to round the price also used aggregation command avg to get the desire outcome.alter
 
 -- 3. What is the total revenue per night from all double rooms?
 select sum(price) As Total_Revenue, name as Hotel_Name,category As Room_Category
	from hotel_details where category='double';
 -- In this query I used sum aggregation operator to get total revenue and applied where clause to filter the to get 
 -- desire out come.
 
--  4. How many different guests have made bookings for August?

SELECT COUNT(guest_no) as Number_Of_Booking
	FROM booking WHERE (date_from between'1989-08-01' AND '1989-08-31')
or  (date_from between'1990-08-01' AND '1990-08-31') 
or  (date_from between'1991-08-01' AND '1991-08-31')
or  (date_from between'1992-08-01' AND '1992-08-31')
or  (date_from between'1993-08-01' AND '1993-08-31')
or  (date_from between'1994-08-01' AND '1994-08-31')
or  (date_from between'1995-08-01' AND '1995-08-31')
or  (date_from between'1996-08-01' AND '1996-08-31')
or  (date_from between'1997-08-01' AND '1997-08-31')
or  (date_from between'1998-08-01' AND '1998-08-31')
or  (date_from between'1999-08-01' AND '1999-08-31')
or  (date_from between'2000-08-01' AND '2000-08-31')
or  (date_from between'2001-08-01' AND '2001-08-31')
or  (date_from between'2002-08-01' AND '2002-08-31')
or  (date_from between'2003-08-01' AND '2003-08-31')
or  (date_from between'2004-08-01' AND '2004-08-31')
or  (date_from between'2005-08-01' AND '2005-08-31')
or  (date_from between'2006-08-01' AND '2006-08-31')
or  (date_from between'2007-08-01' AND '2007-08-31')
or  (date_from between'2008-08-01' AND '2008-08-31')
or  (date_from between'2009-08-01' AND '2009-08-31')
or  (date_from between'2010-08-01' AND '2010-08-31')
or  (date_from between'2011-08-01' AND '2011-08-31')
or  (date_from between'2012-08-01' AND '2012-08-31')
or  (date_from between'2013-08-01' AND '2013-08-31')
or  (date_from between'2014-08-01' AND '2014-08-31')
or  (date_from between'2015-08-01' AND '2015-08-31')
or  (date_from between'2016-08-01' AND '2016-08-31')
or  (date_from between'2017-08-01' AND '2017-08-31')
or  (date_from between'2018-08-01' AND '2018-08-31')
or  (date_from between'2019-08-01' AND '2019-08-31')
or  (date_from between'2020-08-01' AND '2020-08-31')
or  (date_from between'2021-08-01' AND '2021-08-31');
    
-- In this query I have used where clause and betweem to find out the desire query. Used between operator start date to end date in Augest. 	
    
    


-- Subqueries and Joins :-
-- 1. List the price and type of all rooms at the Grosvenor Hotel.
select h.name,h.address,r.price,r.category from hotel h	
	inner join room r on r.hotel_no=h.hotel_no
	where h.name = (select name from hotel where name='Grosvenor Hotel');

-- First you have to select nessery column by select statement after that I have inner join three tables like hotel and room  
-- then applied where clause to implement of subquery to get desire result.

-- 2. List all guests currently staying at the Grosvenor Hotel.
select g.name as Guest_Name,g.address as Guest_Address,h.name as Hotel_Name,h.hotel_no,h.address as Hotel_Address from guest g
	inner join booking b on b.guest_no=g.guest_no
    inner join hotel h on h.hotel_no=b.hotel_no
    where h.name = (select name from hotel where name='Grosvenor Hotel');

-- First you have to select desire column by select statement after that I have inner join three tables like hotel,booking and guest 
-- and then applied where clause to implement of subquery and under subquery used where and comparison operater to get desire result.

-- 3. List the details of all rooms at the Grosvenor Hotel, including the name of the guest staying in the room, if the room is occupied.

create temporary table temp_guest_info
as    
select b.hotel_no,g.guest_no,b.date_from,g.name as Guest_Name, g.address as Guest_address from booking b
		inner join guest g on g.guest_no=b.guest_no;

select tgi.hotel_no,tgi.guest_no,tgi.date_from as Booking_Date,tgi.Guest_name,tgi.Guest_address,h.name as Hotel_name,h.address as Hotel_Address from temp_guest_info tgi
	inner join hotel h on h.hotel_no=tgi.hotel_no
	where h.name=(select name from hotel where name='Grosvenor Hotel');
-- In this query I have create a temporary table where i joined two table like guest and booking with select some desire columns, 
-- after that i inner joined that tempory table with hotel,then apply sub query to get the desire output.
  
--  4. What is the total income from bookings for the Grosvenor Hotel today?
with new_cte
as
(
select date(b.date_from) as Booking_Date,h.name as Hotel_Name, price as Total_Price from booking b
	inner join room r on r.room_no=b.room_no
    inner join hotel h on h.hotel_no=r.hotel_no
	where h.name=(select name from hotel where name='Grosvenor Hotel')
)
select * from new_cte where Booking_Date='2022-01-02';
-- In this query i have created a cte where inner join between booking,room and hotel and then applied sub query at the run select satement to get proper out come.
-- Fro Today date we are assuming that it is 01/02/2022.
    
-- 5. List the rooms that are currently unoccupied at the Grosvenor Hotel.
select r.room_no,r.category,h.name,date(b.date_from) from room r,booking b,hotel h
where (date(b.date_from)='2002-03-03' and h.name='Grosvenor Hotel')
and h.hotel_no=b.hotel_no and r.room_no=b.room_no     

-- Assume that the current date is 03/03/2002 so , as per this date only one room booked today select desire columns and applied sub query.

-- 6. What is the lost income from unoccupied rooms at the Grosvenor Hotel?

SELECT r.room_no,r.hotel_no,r.category,r.price FROM room r
	WHERE room_no not in
    (SELECT room_no FROM booking b, hotel h
	WHERE (date_from <= CURRENT_DATE AND
    date_to >= CURRENT_DATE) AND
    b.hotel_no = h.hotel_no AND h.name = 'Grosvenor');  
    
   -- In this query select desire column and applied where clause room_no not in means they are not booked and 
   -- create a subquery use not in operator, use current date in date_from and date_to and create sub query to get the result. 
    
    
    
    
-- Grouping

-- 1. List the number of rooms in each hotel.

select h.name as Hotel_name,count(h.room_no) as Number_Of_Rooms from hotel_details h
	group by h.name;

-- Select desire columns by select command and applied group by clause to get desire out put.

-- 2. List the number of rooms in each hotel in London.
select h.address as Hotel_Address,count(h.room_no) as Number_Of_Rooms from hotel_details h
	group by h.address;
-- Select desire columns by select command and applied group by clause to get desire out put.

-- 3. What is the average number of bookings for each hotel in August?

select count(guest_no), monthname(b.date_from),h.name from booking b
inner join hotel h on h.hotel_no=b.hotel_no
where monthname(b.date_from)='August'
group by h.name;

-- Here i joined two table booking and hotel with inner join then applied where clause to filter it and group by hotel to get desire output.

-- 4. What is the most commonly booked room type for each hotel in London?
select max(r.category),h.name as Hotel_Name,h.address as Hotel_Address from room r, hotel h
where (h.address='London') and r.hotel_no=h.hotel_no;

-- In this query haven't used the inner join instade of that i used subquery and aggregate funtion to get the desire result.

-- 5. What is the lost income from unoccupied rooms at each hotel today?

create temporary table tem_unc
as
SELECT * FROM room r
	WHERE room_no not in
    (SELECT room_no FROM booking b, hotel h
	WHERE (date_from <= CURRENT_DATE AND
    date_to >= CURRENT_DATE) AND
    b.hotel_no = h.hotel_no)
    group by hotel_no;

select * from tem_unc tu inner join hotel h on h.hotel_no=tu.hotel_no;

-- In this query created a temporary table also created subquery under temporary table where date_from and date_to should be current date 
-- then applied group by clause and at the end inner join with hotel to get desire out put.

   

--  