create table vehiclemaster
(
 comp_name varchar2(15),
 model_no varchar2(15),
 color varchar2(10),
 milage varchar2(5),
 price number(6));
create table vehiclestock
(
 vic_id varchar2(15),
 vic_name varchar2(15),
 mod_no varchar2(15),
 stock number(5));
create table customer
(
 cust_id varchar2(10),
 name char(15),
 phoneno number(14),
 address varchar2(15),
 occupation varchar2(15));
create table salary
(
 eid varchar2(10),
 month varchar2(5),
 year varchar2(5),
 amount number(5),
 sdate date);
create table employee
(
 emp_id varchar2(10),
 name char(15),
 dept varchar2(15),
 sal number(5),
 con_no number(14),
 address varchar2(15),
 doj date);
create table booking
(
 cust_id varchar2(10),
 vid varchar2(15),
 vehicle_name varchar2(15),
 bkng_no varchar2(15),
 dobooking date);
create table allotment
(
 cust_id varchar2(10),
 vid varchar2(15),
 dol date,
 adv_pt number(5),
 dues number(5));
create table delivery
(
 cust_id varchar2(10), 
 vid varchar2(15),
 dol date,
 bill_no varchar2(15),
 payable_amt number(5),
 tot number(5));
create table login
(
 username varchar2(15),
 password varchar2(15),
  hint varchar2(30));
create table payment
(
 cust_id varchar2(10),
 bill_no varchar2(15),
 tax varchar2(5),
 tot_amt number(5),
 payable_amt number(5),
 pdate date);
insert into security(username, password) values('admin', 'admin');
commit;