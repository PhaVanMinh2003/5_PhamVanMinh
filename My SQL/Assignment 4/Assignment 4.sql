DROP DATABASE IF exists `QL_Assignment_4`;
CREATE DATABASE `QL_Assignment_4`;
USE `QL_Assignment_4`;
CREATE TABLE `Department`(
Department_Number INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
Department_Name VARCHAR(30) NOT NULL 
);
CREATE TABLE `Employee_Table`(
Employee_Number INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
Employee_Name VARCHAR(30) NOT NULL ,
Department_Number INT NOT NULL,
CONSTRAINT FK_Department FOREIGN KEY (Department_Number) REFERENCES Department(Department_Number)
);
DROP table IF exists `Employee_Skill_Table`;
CREATE TABLE `Employee_Skill_Table`(
Employee_Number INT  NOT NULL,
Skill_Code CHAR(20) NOT NULL ,
DateRegistered DATETIME,
CONSTRAINT FK_Employee_Table FOREIGN KEY (Employee_Number) REFERENCES Employee_Table(Employee_Number)
);
/*THEM DU LIEU*/
INSERT INTO `Department`(Department_Number,Department_Name)VALUES 	(124,'NGOAI GIAO');
INSERT INTO `Department`(Department_Number,Department_Name)VALUES 	(122,'PHONG QUAN LY NHAN SU');
INSERT INTO `Department`(Department_Number,Department_Name)VALUES 	(166,'KE TOAN');
INSERT INTO `Department`(Department_Number,Department_Name)VALUES 	(144,'BAN HANG');
INSERT INTO `Department`(Department_Number,Department_Name)VALUES 	(125,'BAO VE');

INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (351,'NGUYEN VAN A',124);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (361,'NGUYEN VAN B',124);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (371,'NGUYEN VAN C',122);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (381,'NGUYEN VAN D',122);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (391,'NGUYEN VAN E',122);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (352,'NGUYEN VAN F',166);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (363,'NGUYEN VAN G',166);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (373,'NGUYEN VAN H',166);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (385,'NGUYEN VAN J',144);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (396,'NGUYEN VAN K',144);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (393,'NGUYEN VAN KHOA',125);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (397,'NGUYEN VAN KHACH',125);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (390,'NGUYEN VAN LINH',125);


INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (391,'java','2023-08-10');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (381,'c#,SQl','2023-07-14');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (371,'PHP, JAVA','2023-08-12');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (351,'C++','2023-03-17');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (361,'JAVA ,.NET','2023-08-20');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (352,'PYTHON','2023-01-19');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (363,'PYTHON,PHP','2023-02-19');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (373,'JAVA','2023-03-19');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (385,'SQL','2023-01-120');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (396,'JAVACRIPT','2023-01-30');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (393,'C','2023-04-19');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (397,'WINDOWS FORM','2023-06-19');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (390,'ASP.NET MVC','2023-05-19');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (390,'PHP','2023-05-19');


/*QUERY*/
/*
Question 3: Viết lệnh để lấy ra danh sách nhân viên (name) có skill Java
Hướng dẫn: sử dụng UNION
*/
SELECT	ET.Employee_Number,ET.Employee_Name,EST.Skill_Code
FROM Employee_Table ET INNER JOIN Employee_Skill_Table EST ON ET.Employee_Number=EST.Employee_Number
WHERE EST.Skill_Code LIKE '%JAVA';
/*
4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
*/
SELECT D.Department_Name AS TÊN_PHÒNG,COUNT(E.Employee_Number) AS Số_Lượng_Nhân_Viên
FROM Department D INNER JOIN Employee_Table E ON D.Department_Number=E.Department_Number
GROUP BY D.Department_Name
HAVING Số_Lượng_Nhân_Viên=3;
/*
Question 5: Viết lệnh để lấy ra danh sách nhân viên của mỗi văn phòng ban.
*/
SELECT Department_Number,GROUP_CONCAT(Employee_Name) AS danh_sach_nhan_vien
FROM Employee_Table
GROUP BY Department_Number;
/*
Question 6: Viết lệnh để lấy ra danh sách nhân viên có > 1 skills.
*/
SELECT ET.Employee_Name,COUNT(EST.Skill_Code) AS Số_lƯỢNG_SKILLS
FROM Employee_Table ET INNER JOIN Employee_Skill_Table EST ON ET.Employee_Number= EST.Employee_Number
GROUP BY ET.Employee_Name
HAVING Số_lƯỢNG_SKILLS >1;
											



