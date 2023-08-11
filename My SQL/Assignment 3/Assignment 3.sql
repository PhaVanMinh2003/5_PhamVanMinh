DROP DATABASE IF exists `fresher`;/*Kiểm tra và xóa daratabase */
CREATE DATABASE `fresher`;		/*Tạo DATABASE */
USE fresher;						/*Chỉ đến database*/
DROP table  IF exists `Trainee`;/*Kiểm tra và xóa table*/
CREATE TABLE `Trainee`			/*Tạo bảng*/
(
TraineeID			INT(10)AUTO_INCREMENT 					NOT NULL PRIMARY KEY,
Full_Name			NVARCHAR(30) 							NOT NULL,
Birth_Date  		DATE ,
Gender				ENUM('male','female','unknown') 		NOT NULL,
ET_IQ				TINYINT UNSIGNED CHECK (ET_IQ<=20)		NOT NULL,
ET_Gmath			TINYINT UNSIGNED CHECK (ET_Gmath<=20)	NOT NULL,
ET_English			TINYINT UNSIGNED CHECK (ET_English<=50)	NOT NULL,
Training_Class		CHAR(10) 								NOT NULL,
Evaluation_Notes	NVARCHAR(50) 							
);
/*Thêm cột vào bảng có sẳn*/
ALTER TABLE `Trainee`
			ADD COLUMN VTI_Account VARCHAR(30) UNIQUE NOT NULL;
/*Nhập dữ liệu*/            
INSERT INTO `Trainee`(TraineeID, Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)VALUES 	(1245351,'Pham Van Minh','2002-02-02','male',15,13,11,001,null,'VanMinh');
INSERT INTO `Trainee`(TraineeID, Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)VALUES 	(1372651,'Nguyễn Thu Anh','2000-02-02','female',15,14,22,002,null,'ThuuAnh');
INSERT INTO `Trainee`(TraineeID, Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)VALUES 	(1445351,'Trần Mộng Cách','1992-03-02','male',11,13,20,003,null,'MongCach');
INSERT INTO `Trainee`(TraineeID, Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)VALUES 	(1545351,'Võ Lý Tịnh','1998-04-02','male',15,13,11,004,null,'lyTinh');
INSERT INTO `Trainee`(TraineeID, Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)VALUES 	(1645351,'Doãn Chí Bình','2002-05-02','male',15,13,15,005,null,'ChiBinh');
INSERT INTO `Trainee`(TraineeID, Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)VALUES 	(1745351,'Phan Công Khanh','2003-02-02','male',15,14,11,001,null,'CongKhanh');
INSERT INTO `Trainee`(TraineeID, Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)VALUES 	(1845351,'Nguyễn Dương QUá', '1999-03-02','male',15,13,11,002,null,'DuongQua');
INSERT INTO `Trainee`(TraineeID, Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)VALUES 	(1945351,'Lệnh Hồ Xung','2002-05-02','male',15,13,20,001,null,'HoCa');
INSERT INTO `Trainee`(TraineeID, Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)VALUES 	(2045351,'Nhạc Bất Quần','2001-02-02','male',15,15,11,003,null,'BatQuan');
INSERT INTO `Trainee`(TraineeID, Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)VALUES 	(2145351,'Pham Van Chiêu','2002-01-02','male',16,13,11,001,null,'VanChieu');
INSERT INTO `Trainee`(TraineeID, Full_Name,Birth_Date,Gender,ET_IQ,ET_Gmath,ET_English,Training_Class,Evaluation_Notes,VTI_Account)VALUES 	(2245351,'Nguyễn Trần Quách Tĩnh', '1998-02-02','male',15,11,11,001,null,'QuachTinh');
		/*Query*/
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Trainee;
													/*Thực Hiên Truy Vấn*/
SELECT * FROM Trainee;
/*
Question 2: Viết lệnh để lấy ra tất cả các thực tập sinh đã vượt qua bài test đầu vào,
nhóm chúng thành các tháng sinh khác nhau
*/

			SELECT 	t.Full_Name,t.Gender,A.*
			FROM 	Trainee t inner join (
											select * from Trainee	
											order by month (Birth_Date) desc, TraineeID desc 
											)A ON t.TraineeID=A.TraineeID
			WHERE	t.ET_IQ + t.ET_Gmath>=20 	AND
					t.ET_IQ>=8					AND
					t.ET_Gmath>=8				AND 
					t.ET_English>=18	
			;


/*
Question 3: Viết lệnh để lấy ra thực tập sinh có tên dài nhất, lấy ra các thông tin sau:
tên, tuổi, các thông tin cơ bản (như đã được định nghĩa trong table)
*/
			SELECT t.TraineeID,t.Full_Name, t.Gender,A.tuoi
			FROM Trainee t inner join(
										SELECT TraineeID,DATEDIFF(CURDATE(),Birth_Date) / 365 AS tuoi 
										FROM Trainee)A
										ON t.TraineeID=A.TraineeID
			WHERE LENGTH(Full_Name) =	(
										SELECT MAX(LENGTH(Full_Name))
										FROM Trainee 
										);


/*
tên, tuổi, các thông tin cơ bản (như đã được định nghĩa trong table)
Question 4: Viết lệnh để lấy ra tất cả các thực tập sinh là ET, 1 ET thực tập sinh là
những người đã vượt qua bài test đầu vào và thỏa mãn số điểm như sau:

 ET_IQ + ET_Gmath>=20
 ET_IQ>=8
 ET_Gmath>=8
 ET_English>=18
*/
SELECT *
FROM Trainee
WHERE 	ET_IQ + ET_Gmath>=20 	AND
		ET_IQ>=8				AND
		ET_Gmath>=8				AND 
		ET_English>=18;

/*
Question 5: xóa thực tập sinh có TraineeID = 3
*/
Delete from trainee where TraineeID = 2145351;
select * from trainee;
/*Question 6: Thực tập sinh có TraineeID = 5 được chuyển sang lớp "2". Hãy cập nhật
thông tin vào database
*/
UPDATE 	Trainee
SET 	Training_class = 2
WHERE  	traineeID = 5;
