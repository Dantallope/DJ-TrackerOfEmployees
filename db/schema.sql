drop database if exists tracker_db;
create database tracker_db;
use tracker_db;

drop table if exists employee;
drop table if exists role;
drop table if exists department;

create table employee (
  id int AUTO_INCREMENT not null,
  first_name varchar(30) not null,
  last_name varchar(30) not null,
  role_id int not null,
  manager_id int,
  primary key(id)
);
create table role (
  id int AUTO_INCREMENT not null,
  title varchar(30) not  null,
  salary decimal not null,
  department_id int not null,
  primary key(id)
);
create table department (
  id int AUTO_INCREMENT not null,
  name varchar(30) not null,
  primary key(id)
);