create table DONOR
(
D_ID number not null primary key, D_NAME varchar2(40), D_AGE number, D_GENDER
varchar2(6), D_BLOODGROUP varchar2(10), D_AREA varchar2(30), D_ADD varchar2(100),
D_CONTACT varchar2(100), D_ELIGIBILITY varchar2(4)
);

CREATE TABLE RECIPIENT
(
R_ID number, R_NAME varchar2(100), R_AGE number, R_GENDER varchar2(10),
R_BLOODGROUP char(3),R_ADD varchar2(30), R_CONTACT varchar2(30), D_ID number,
PRIMARY KEY(R_ID)
);

CREATE TABLE BLOOD_INVENTORY
(
D_ID number, BAG_NO int, HEAMOGLOBIN number, PLATELETS number, PRIMARY
KEY(BAG_NO)
);

CREATE TABLE DONATION_DETAILS
(
D_ID number, DONATION_NO number, HOSPITAL varchar2(100), AMOUNT number,
DONATION_DATE date, PRIMARY KEY(DONATION_NO)
);

INSERTING VALUES INTO DONOR
insert into DONOR values(1,'Arya',20,'Female','AB-','Adajan','24 Raj Palace','7450014526','Yes');
insert into DONOR values(2,'Helli',25,'Female','B-','Pal','5/4 Western Heights','0191999999','No');
insert into DONOR values(3,'Khushi',22,'Female','A+','Maninagar','100 Kashivishwanath Society',
'0167666666','Yes');
insert into DONOR values(4,'Rita',21,'Female','AB+','CityLight','67 Green City', '0127534768','Yes');
insert into DONOR values(5,'Prerit',40,'Male','B+','Mirpur','58 Royal Heights','4204204204','No');
insert into DONOR values(6,'Sanjana',30,'Female','A+','Rampura','24/5 DIT Road', '1231231231','No');
insert into DONOR values(7,'Krish',25,'Male','B-','Mirpur','123 East of Nowhere', '5470865368','Yes');
insert into DONOR values(8,'Krupa',45,'Female','A-','Tejgaon','7A05 LV Road', '7705703706','Yes');
insert into DONOR values(9,'Manish',32,'Male','O+','Panthapath','98 South Panthapath',
'9898989898','No');
insert into DONOR values(10,'Sakshi',27,'Female','O-','Firmgate','Firmgate Bridge', '0060060060','No');

INSERTING VALUES INTO RECIPIENT
insert into RECIPIENT values(1, 'Abdullah', 25, 'Male', 'B+','34 Dhanmondi','0123436747', 5);
insert into RECIPIENT values(2 , 'Samiha', 22, 'Female', 'AB+','6/D Basundhara','367373224', 4);
insert into RECIPIENT values(3 , 'Rifat', 35, 'Male', 'AB-','36 Banani','45648585', 1);
insert into RECIPIENT values(4 , 'Sabbir', 40, 'Male', 'B-','4/C Mirpur','56658585', 2);
insert into RECIPIENT values(5 , 'Sumaya', 21, 'Female', 'O+','3-B Gulshan','23425266', 9);
insert into RECIPIENT values(6 , 'Oishy', 27, 'Female', 'A+','3 Rampura','567567557', 3);
insert into RECIPIENT values(7 , 'Obonti', 32, 'Female', 'A+','45 B Badda','1225366666', 6);
insert into RECIPIENT values(8, 'Sami', 38, 'Male', 'A-','14/D Uttara','68696968', 8);
insert into RECIPIENT values(9 , 'Siam', 45, 'Male', 'O-','C 3 Khilgaon','3453647768', 10);
insert into RECIPIENT values(10 , 'Nayem', 20, 'Male', 'B-','5/D Shantinagar','253647768', 7);

INSERTING INTO BLOOD_INVENTORY
insert into BLOOD_INVENTORY (DID, bagnumber, heamoglobin, platelets) values (1, 1, 14, 55);
insert into BLOOD_INVENTORY (DID, bagnumber, heamoglobin, platelets) values (2, 2, 15, 52);
insert into BLOOD_INVENTORY (DID, bagnumber, heamoglobin, platelets) values (3, 3, 16, 56);
insert into BLOOD_INVENTORY (DID, bagnumber, heamoglobin, platelets) values (4, 4, 18, 59);
insert into BLOOD_INVENTORY (DID, bagnumber, heamoglobin, platelets) values (5, 5, 14, 45);
insert into BLOOD_INVENTORY (DID, bagnumber, heamoglobin, platelets) values (6,6, 17, 61);
insert into BLOOD_INVENTORY (DID, bagnumber, heamoglobin, platelets) values (7, 7, 15, 49);
insert into BLOOD_INVENTORY (DID, bagnumber, heamoglobin, platelets) values (8, 8, 10, 65);
insert into BLOOD_INVENTORY (DID, bagnumber, heamoglobin, platelets) values (9,9, 12, 50);
insert into BLOOD_INVENTORY (DID, bagnumber, heamoglobin, platelets) values (10,10, 14, 55);

INSERTING INTO DONATION_DETAILS
insert into DONATION_DETAILS values (1, 101, 'Ad-Din Hospital', 2,
TO_DATE('2018-02-03','yyyy/mm/dd'))
insert into DONATION_DETAILS values (2, 102, 'Shahid Suhrawardy Hospital', 3,
TO_DATE('2015-11-22','yyyy/mm/dd'))
insert into DONATION_DETAILS values (3, 103, 'Al- Helal Speacialist Hospital', 1,
TO_DATE('2010-1-10','yyyy/mm/dd'))
insert into DONATION_DETAILS values (4, 104, 'Appolo Hospital', 2,
TO_DATE('2014-2-14','yyyy/mm/dd'))
insert into DONATION_DETAILS values (5, 105, 'Bangabandhu Shiekh Mujib Medical University', 4,
TO_DATE('2015-4-16','yyyy/mm/dd'))
insert into DONATION_DETAILS values (6, 106, 'Bangladesh Heart and Chest Hospital', 3,
TO_DATE('2012-11-5','yyyy/mm/dd'))
insert into DONATION_DETAILS values (7, 107, 'Bangladesh Medical College', 1,
TO_DATE('2018-1-21','yyyy/mm/dd'))
insert into DONATION_DETAILS values (8, 108, 'Central Hospital Ltd.', 1,
TO_DATE('2016-9-13','yyyy/mm/dd'))
insert into DONATION_DETAILS values (9, 109, 'Islami Bank Hospital', 3,
TO_DATE('2017-6-27','yyyy/mm/dd'))
insert into DONATION_DETAILS values (10, 110, 'City Hospital Ltd', 2,
TO_DATE('2017-10-4','yyyy/mm/dd'))

CREATING DONOR SEQUENCE
Create sequence donor_sequence start with 11 increment by 1 minvalue 1 maxvalue 10000;

CREATING RECIPIENT SEQUENCE
Create sequence recip_sequence start with 11 increment by 1 minvalue 11 maxvalue 10000;

CREATING BLOOD INVENTORY SEQUENCE
Create sequence blinven_sequence start with 11 increment by 1 minvalue 11 maxvalue 10000;

CREATING DONATION DETAILS SEQUENCE
Create sequence dondet_sequence start with 111 increment by 1 minvalue 111 maxvalue 10000;

CREATING TRIGGER - INSERTION IN DONOR TABLE
create trigger trigDonorInsert
after insert on DONOR
for each row
declare
id DONOR.D_ID%TYPE := :new.DID;
begin
dbms_output.put_line('data inserted');
insert into RECIPIENT(R_ID,D_ID) values(recip_sequence.nextval,id);
insert into BLOOD_INVENTORY(D_ID, BAG_NO) values(id,blinven_sequence.nextval);
insert into DONATION_DETAILS(D_ID, DONATION_NO) values(id,dondet_sequence.nextval);
end;


IMPLEMENTING TRIGGER
insert into DONOR values(donor_sequence.nextval,'Aesha',25,'Female','AB-','Ajwa','24 Garden
Society','9996637412','Yes')

FUNCTION TO COUNT BAG NUMBER OF PARTICULAR BLOOD
GROUP
create or replace function countBagNums(matchBloodGroup DONOR.D_BLOODGROUP%TYPE)
return number
is
totalBags number;
begin
select count(BAG_NO) into totalBags from BLOOD_INVENTORY
where D_ID in ( select D_ID from DONOR where D_BLOODGROUP = matchBloodGroup);
return totalBags;
end countBagNums;

PL/SQL Block to find number of bags of particular blood group
declare
bg varchar2(100) := 'AB-';
res number;
begin
res := countBagNums(bg);
dbms_output.put_line('Total bags of blood group ' ||bg|| ' = '||res);
end;

PROCEDURE TO CHECK ELIGIBILITY
create or replace procedure isEligible ( id in DONOR.D_ID%TYPE, presentDate in out
DONATION_DETAILS.DONATION_DATE%TYPE)
is
calcDate DONATION_DETAILS.DONATION_DATE%TYPE;
givenDate DONATION_DETAILS.DONATION_DATE%TYPE;
cursor getDateFrom( tempid in DONOR.D_ID%TYPE ) is
select DONATION_DATE from DONATION_DETAILS where D_ID=tempid;
begin
open getDateFrom(id);
loop
fetch getDateFrom into givenDate;
exit when getDateFrom%notfound;
end loop;
close getDateFrom;
calcDate:= add_months(givenDate, 4);
--DBMS_OUTPUT.PUT_LINE('calculated date = ' || to_char(calcDate));
if calcDate > presentDate then
update Donor set D_eligibility = 'No' where D_ID=id;
else
update Donor set D_eligibility = 'Yes' where D_ID=id;
end if;
end isEligible;
