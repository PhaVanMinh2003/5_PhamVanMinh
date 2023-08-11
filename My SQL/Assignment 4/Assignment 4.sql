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
CREATE TABLE `Employee_Skill_Table`(
Employee_Number INT  NOT NULL,
Skill_Code CHAR(10) NOT NULL ,
DateRegistered DATETIME,
CONSTRAINT FK_Employee_Table FOREIGN KEY (Employee_Number) REFERENCES Employee_Table(Employee_Number)
);
/*THEM DU LIEU*/
INSERT INTO `Department`(Department_Number,Department_Name)VALUES 	(1245351,'NGOAI GIAO');
INSERT INTO `Department`(Department_Number,Department_Name)VALUES 	(1222251,'PHONG QUAN LY NHAN SU');
INSERT INTO `Department`(Department_Number,Department_Name)VALUES 	(1666651,'KE TOAN');
INSERT INTO `Department`(Department_Number,Department_Name)VALUES 	(1444451,'BAN HANG');
INSERT INTO `Department`(Department_Number,Department_Name)VALUES 	(1246661,'BAO VE');

INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (351,'NGUYEN VAN A',1245351);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (361,'NGUYEN VAN B',1222251);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (371,'NGUYEN VAN C',1245351);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (381,'NGUYEN VAN D',1444451);
INSERT INTO `Employee_Table`(Employee_Number,Employee_Name,Department_Number)VALUES (391,'NGUYEN VAN E',1246661);

INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (391,'21DKTMC','2023-08-10');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (381,'22DKTMC','2023-07-14');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (371,'23DKTMC','2023-08-12');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (351,'24DKTMC','2023-03-17');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (361,'25DKTMC','2023-08-20');
INSERT INTO `Employee_Skill_Table`(Employee_Number,Skill_Code,DateRegistered)VALUES (371,'26DKTMC','2023-01-19');
/*QUERY*/


