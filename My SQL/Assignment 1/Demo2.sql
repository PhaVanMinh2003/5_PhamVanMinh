DROP DATABASE IF exists QL_FTM;
CREATE DATABASE QL_FTM;			/*Tạo database*/
USE QL_FTM;						/*Chỉ đến DATABASE*/
DROP TABLE  IF exists Trainee;	/*Kiểm tra sự tồn tại và xóa bảng*/
CREATE TABLE Trainee (
    TraineeID INT NOT NULL PRIMARY KEY,
    Full_Nametrainee NVARCHAR(50) NOT NULL,
    Birth_Date DATE,
    Gender BOOL NOT NULL,
    ET_IQ INT(20) NOT NULL,
    ET_Gmath INT(20) NOT NULL,
    ET_English INT(50) NOT NULL,
    Training_Class VARCHAR(10) NOT NULL,
    Evaluation_Notes NVARCHAR(50) NULL
);
/*Thêm cột "VTI_Account" có kiểu VARCHAR và mang giá một trường NOT NULL */
ALTER 	TABLE Trainee
		ADD  VTI_Account VARCHAR(20)  NOT NULL;
