CREATE TABLE department 
(
 dept_id int primary key,
 dept_name VARCHAR(20) not null,
 dept_address VARCHAR(10) not null
);
CREATE TABLE employee 
(
	emp_id VARCHAR(10) primary key,
	emp_name VARCHAR(20) not null,
	emp_sex VARCHAR(2) not null,
	birthDate date,
	emp_address VARCHAR(80) not null,
	emp_tel VARCHAR(15) not null,
	dept_id int not null,
	FOREIGN KEY(dept_id) REFERENCES department(dept_id)
);
INSERT into department(dept_id,dept_name,dept_address)values(1001,'财务部','3-202');
INSERT into department(dept_id,dept_name,dept_address)values(1002,'销售部','2-202');
INSERT into department(dept_id,dept_name,dept_address)values(1003,'研发部','1-202');
INSERT into department(dept_id,dept_name,dept_address)values(1004,'生产部','6-202');

INSERT into employee values('k001','刘德华','男','1989-02-17','香港','123455666','1002');
INSERT into employee values('k002','王宝强','男','1989-02-17','香港','123455666','1003');
INSERT into employee values('k003','张三丰','男','1989-02-17','香港','123455666','1001');
INSERT into employee values('k004','刘强东','男','1989-02-17','香港','123455666','1004');

update department set dept_address='3-232',dept_name='娱乐部' WHERE dept_id=1001;
UPDATE department set dept_name='技术研发部' WHERE dept_id=1001;
UPDATE employee set dept_id=1004 WHERE emp_id='k004';

DELETE FROM employee WHERE emp_id='k003';
ALTER TABLE employee RENAME emp;    --修改表名称
ALTER TABLE emp MODIFY emp_sex VARCHAR(4); --修改字段的数据类型
alter table emp CHANGE emp_sex emp_gender VARCHAR(8);  --修改字段的名称
ALTER TABLE emp add emp_email VARCHAR(30) not null; --创建字段
ALTER TABLE emp add emp_fixphoneNumber VARCHAR(20) not null after emp_tel; --创建字段并指定位置
DESC emp;
ALTER TABLE emp add id int  first;  --创建字段并添加到第一位
--调整数据表中字段的排列位置
ALTER TABLE emp MODIFY emp_address VARCHAR(8) after emp_fixphoneNumber;
alter TABLE emp MODIFY emp_name VARCHAR(10) first;
ALTER TABLE emp DROP emp_email; --删除数据表中指定字段
-- ALTER TABLE emp DROP FOREIGN KEY emp_ibfk_1; 删除外键
--修改数据库存储引擎
-- ALTER TABLE emp ENGINE=MyISAM;





