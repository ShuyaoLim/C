CREATE TABLE student
(
 num int(10) not null PRIMARY key,
 stu_name VARCHAR(20) not null,
 sex VARCHAR(4),
 brithday DATETIME,
 address VARCHAR(50)
)
CREATE TABLE grade
(
 id int(10) not null PRIMARY key auto_increment,
 course  VARCHAR(10) not null,
 s_num int(10),
 FOREIGN KEY(s_num) REFERENCES student(num),
 grade VARCHAR(4)
)
desc grade


ALTER TABLE grade  MODIFY course VARCHAR(20)
desc grade
ALTER TABLE grade MODIFY course varchar(20) AFTER s_num;
desc grade


ALTER TABLE grade change grade score VARCHAR(4);
desc grade

ALTER TABLE grade DROP FOREIGN KEY grade_ibfk_1;
desc grade

ALTER TABLE grade ENGINE=MyISAM;

desc student;

ALTER TABLE student DROP address;
desc student;

ALTER TABLE student add phone int(10) not null;
DESC student;
desc grade
RENAME TABLE grade to gradeInfo; --修改表名


