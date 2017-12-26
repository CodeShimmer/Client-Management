create user in oracle 

user name    :  cms
password    :  cms

create dsn name:     cmst



connect  system/manager;


create user cms identified by cms;

grant dba to cms;







place the folder named  CMST 

in  tomcat /webapps directory

create tables with following structure


create table toservice (type_sid number(3) constraint tsid_ps  primary key ,service_name varchar2(20) not null, 
validity varchar2(20) not null,amount number(10) not null);


create table cust_req_details(cust_id number(3) constraint cust_id_pk primary key,
cust_name varchar2(20) not null,
cust_address varchar2(50) not null,
contact_no varchar2(12) not null,
email_id varchar2(50) not null,
type_sid number(3) references toservice(type_sid));


create table cust_domain_reg(domain_id number(3) constraint did_pk primary key,
cust_id number(3) references cust_req_details(cust_id),
domain_name varchar2(50) not null,
server varchar2(30) not null,
todatabase varchar2(20) not null,
ser_st_date date,
domain_desc varchar2(1000));


create table customer_login(login_id varchar2(10) constraint lid_pk primary key,
pwd varchar2(20) not null,
cust_id number(3) references cust_req_details(cust_id),
cust_reg_date date);

create table membership_fee(cust_id number(3) references cust_req_details(cust_id),
type_sid number(3) references  toservice(type_sid),
amt number(10,2),
paid_date date,
no varchar2(15) not null);


create table admin_master(admin_id varchar2(20) constraint admin_id_pk  primary key,
admin_pwd varchar2(20) not null,
company varchar2(20),
address varchar2(20),
contact_no varchar2(12) not null,
email_id varchar2(50) not null);

create table domain_feedback(domain_id number(3) references cust_domain_reg(domain_id),
cust_id number(3) references cust_req_details(cust_id),
domain_feedback varchar2(1000) not null);
