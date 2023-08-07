
DROP DATABASE IF exists `fresher`;
CREATE DATABASE `fresher`;
CREATE TABLE `Trainee`
(
TraineeID			INT(10)AUTO_INCREMENT 					NOT NULL PRIMARY KEY,
Full_Name			NVARCHAR(30) 							NOT NULL,
Birth_Date  		DATE ,
Gender				ENUM('male','female','unknown') 		NOT NULL,
ET_IQ				TINYINT UNSIGNED CHECK (ET_IQ<=20)		NOT NULL,
ET_Gmath			TINYINT UNSIGNED CHECK (ET_Gmath<=20)	NOT NULL,
ET_English			TINYINT UNSIGNED CHECK (ET_English<=50)	NOT NULL,
Training_Class		CHAR(10) 								NOT NULL,
Evaluation_Notes	NVARCHAR(50) 							NOT NULL
);
ALTER TABLE `Trainee`
			ADD COLUMN VTI_Account VARCHAR(30) UNIQUE NOT NULL
