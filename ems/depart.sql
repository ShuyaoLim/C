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
-- 精确查询
SELECT * from department WHERE dep_id='1003';
SELECT dep_name,dept_adress FROM department WHERE dep_id='1003';

-- 模糊查询
-- 匹配符%表示匹配0～m个字符 _:表示陪陪1个字符
SELECT*FROM department WHERE dep_name like "_务_";

INSERT into employee VALUES('001','zhangsan','m',28,'address001','1002');
INSERT into employee VALUES('011','zhangsan','f',23,'address011','1004');

SELECT * FROM employee WHERE emp_name like '%zhangsan';  --以张三结尾

SELECT * FROM employee WHERE emp_name like 'zhangsan' and emp_sex='f'; 

SELECT *FROM employee WHERE emp_age <30;
SELECT * FROM employee WHERE emp_age>25 and emp_age<30;

--介于m于n之间
 SELECT * FROM employee WHERE emp_age BETWEEN 25 AND 30;  
 
 
 --在一个集合中查找
 SELECT * FROM employee WHERE emp_age in (23,25);
 
 
 
 SELECT DISTINCT emp_name FROM employee;
 
 SELECT DISTINCT emp_sex FROM employee;
 SELECT COUNT(*) FROM employee; --查询表记录
 
 SELECT * FROM department ORDER BY dep_id;  --根据字段排序
 SELECT * from department ORDER BY dept_adress desc --降序排序
