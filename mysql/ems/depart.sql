CREATE TABLE department 
(
dep_id varchar(4) PRIMARY key,
dep_name varchar(20) not null,
dept_adress VARCHAR(30) not null 
);

CREATE TABLE employee
(
 emp_id varchar(8) PRIMARY key,
 emp_name VARCHAR(20) not null,
 emp_sex VARCHAR(4) not null,
 emp_age int not null,
 emp_adress VARCHAR(50) not null,
 dept_id VARCHAR(4) not null,
 constraint fk_emp FOREIGN key(dept_id) REFERENCES department(dep_id)
);

INSERT into department(dep_id,dep_name,dept_adress) values('10001','财务部','302');

INSERT into department(dep_id,dep_name,dept_adress) values('1002','财务部1','302');

INSERT into department(dep_id,dep_name,dept_adress) values('1003','财务部2','302');


SELECT * from department;






