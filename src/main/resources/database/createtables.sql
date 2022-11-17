create table security
(
 username varchar(30),
 password varchar(20),
  hint varchar(30)),
  role varchar(30)
),
create table vehiclestock
(
 vic_id varchar(20),
 vic_name varchar(30),
 mod_no varchar(15),
 stock varchar(10)
),
 create table customer
 (
 cust_id varchar(20),
 name varchar(30),
 phoneno varchar(14),
 address varchar(30),
 occupation varchar(30)
 ),
 create table salary
(
 eid varchar(15),
 month varchar(5),
 year varchar(5),
 amount varchar(7),
 sdate varchar(15)
 ),
 create table employee
(
 emp_id varchar(15),
 name varchar(30),
 dept varchar(20),
 sal varchar(7),
 con_no varchar(13),
 address varchar(30),
 doj varchar(15)
 );
 
 create table booking
(
 cust_id varchar(15),
 vid varchar(15),
 vehicle_name varchar(20),
 bkng_no varchar(15),
 dobooking varchar(15)
 );

 create table allotment
(
 cust_id varchar(15),
 vid varchar(15),
 dol varchar(15),
 adv_pt varchar(8),
 dues varchar(8)
 );
 
 create table delivery
(
 cust_id varchar(10), 
 vid varchar(15),
 dol varchar(15),
 bill_no varchar(15),
 payable_amt varchar(7),
 tot varchar(7)
 );
 create table payment
(
 cust_id varchar(10),
 bill_no varchar(15),
 tax varchar(5),
 tot_amt varchar(7),
 payable_amt varchar(7),
 pdate varchar(15)
 );
 
 
 
 