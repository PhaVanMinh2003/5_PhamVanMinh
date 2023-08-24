use ql_hoctap;
/*Nhập dữ liệu*/
INSERT INTO `Department`(DepartmentID,DepartmentName)VALUES (11,'DIEU HANH');
INSERT INTO `Department`(DepartmentID,DepartmentName)VALUES (12,'NGOAI GIAO');
INSERT INTO `Department`(DepartmentID,DepartmentName)VALUES (13,'KINH DOANH');
INSERT INTO `Department`(DepartmentID,DepartmentName)VALUES (14,'BAO VE');
INSERT INTO `Department`(DepartmentID,DepartmentName)VALUES (15,'PHONG IT');

INSERT INTO `Position_m`(PositionID,PositionName)VALUES (1,'CHU TICH');
INSERT INTO `Position_m`(PositionID,PositionName)VALUES (2,'TONG GIAM DOC');
INSERT INTO `Position_m`(PositionID,PositionName)VALUES (3,'GIAM DOC');
INSERT INTO `Position_m`(PositionID,PositionName)VALUES (4,'PHO GIAM DOC');
INSERT INTO `Position_m`(PositionID,PositionName)VALUES (5,'TRUONG PHONG');
INSERT INTO `Position_m`(PositionID,PositionName)VALUES (6,'PHO PHONG');
INSERT INTO `Position_m`(PositionID,PositionName)VALUES (7,'NHAN VIEN');

INSERT INTO `Account`(AccountID,Email,Username,FullName,DepartmentID,PositionID,CreateDate)VALUES (101,'MM12@GMAIL.COM','VANMINH','PHAMVANMINH',11,1,'2022-2-22');
INSERT INTO `Account`(AccountID,Email,Username,FullName,DepartmentID,PositionID,CreateDate)VALUES (102,'NN52@GMAIL.COM','TOANVEN','PHAMTOANVEN',12,3,'2022-3-22');
INSERT INTO `Account`(AccountID,Email,Username,FullName,DepartmentID,PositionID,CreateDate)VALUES (103,'HG42@GMAIL.COM','CAONHI','CAOTHINHI',13,2,'2022-4-22');
INSERT INTO `Account`(AccountID,Email,Username,FullName,DepartmentID,PositionID,CreateDate)VALUES (104,'II12@GMAIL.COM','QUACHTINH','NGUYENQUACHTINH',13,4,'2022-5-22');
INSERT INTO `Account`(AccountID,Email,Username,FullName,DepartmentID,PositionID,CreateDate)VALUES (105,'MM652@GMAIL.COM','THIHOA','NGUYENTHIHOA',15,5,'2022-6-22');
INSERT INTO `Account`(AccountID,Email,Username,FullName,DepartmentID,PositionID,CreateDate)VALUES (106,'KK12@GMAIL.COM','THIBONG','LETHIBONG',15,7,'2022-7-22');
INSERT INTO `Account`(AccountID,Email,Username,FullName,DepartmentID,PositionID,CreateDate)VALUES (107,'KFGF12@GMAIL.COM','THINGHE','LETHINGHE',15,6,'2022-7-22');

alter table Groupp
add CONSTRAINT FK_Groupp FOREIGN KEY (CreatorID) REFERENCES Account(AccountID);
alter table Exam
add CONSTRAINT FK_Exam FOREIGN KEY (CreatorID) REFERENCES Account(AccountID);
alter table Question
add CONSTRAINT FK_Question FOREIGN KEY (CreatorID) REFERENCES Account(AccountID);

INSERT INTO `Groupp`(GroupID,GroupName,CreatorID,CreateDate)VALUES (711,'THI IT',101,'2022-03-12');
INSERT INTO `Groupp`(GroupID,GroupName,CreatorID,CreateDate)VALUES (712,'THI kinh doanh',102,'2022-04-12');
INSERT INTO `Groupp`(GroupID,GroupName,CreatorID,CreateDate)VALUES (713,'THI kpi',103,'2022-05-12');

INSERT INTO `GroupAccount`(GroupID,AccountID,JoinDate)VALUES (711,102,'2022-05-12');
INSERT INTO `GroupAccount`(GroupID,AccountID,JoinDate)VALUES (712,103,'2022-05-12');
INSERT INTO `GroupAccount`(GroupID,AccountID,JoinDate)VALUES (713,104,'2022-05-12');


INSERT INTO `TypeQuestion`(TypeID,TypeName)VALUES (777,'Essay');
INSERT INTO `TypeQuestion`(TypeID,TypeName)VALUES (888,'Multiple-Choice');

INSERT INTO `CategoryQuestion`(CategoryID,CategoryName)VALUES (222,'Java');
INSERT INTO `CategoryQuestion`(CategoryID,CategoryName)VALUES (333,'.NET');
INSERT INTO `CategoryQuestion`(CategoryID,CategoryName)VALUES (444,'SQL');

INSERT INTO `Question`(QuestionID,Content,CategoryID,TypeID,CreatorID,CreateDate)VALUES (001,'KHÁI NIỆM IF',222,777,101,'2023-02-22');
INSERT INTO `Question`(QuestionID,Content,CategoryID,TypeID,CreatorID,CreateDate)VALUES (002,'KHÁI NIỆM WHILE ',222,777,101,'2023-02-22');
INSERT INTO `Question`(QuestionID,Content,CategoryID,TypeID,CreatorID,CreateDate)VALUES (003,'KHÁI NIỆM .NET ',333,777,101,'2023-02-22');
INSERT INTO `Question`(QuestionID,Content,CategoryID,TypeID,CreatorID,CreateDate)VALUES (004,'KHÁI NIỆM DATABASE ',444,777,101,'2023-02-22');

INSERT INTO `Answer`(AnswerID,Content,QuestionID,isCorrect)VALUES (100,'CHƯA CÓ ',001,0);
INSERT INTO `Answer`(AnswerID,Content,QuestionID,isCorrect)VALUES (200,'CHƯA CÓ ',002,0);
INSERT INTO `Answer`(AnswerID,Content,QuestionID,isCorrect)VALUES (300,'CHƯA CÓ ',003,0);
INSERT INTO `Answer`(AnswerID,Content,QuestionID,isCorrect)VALUES (400,'CHƯA CÓ ',004,0);


INSERT INTO `Exam`(ExamID,Code,Title,CategoryID,Duration,CreatorID,CreateDate)VALUES (010,1210 ,'CUOI KI',222,'06:35:20',101,'2022-02-22');
INSERT INTO `Exam`(ExamID,Code,Title,CategoryID,Duration,CreatorID,CreateDate)VALUES (020,1220 ,'CUOI KI',333,'01:35:20',102,'2022-02-22');
INSERT INTO `Exam`(ExamID,Code,Title,CategoryID,Duration,CreatorID,CreateDate)VALUES (030,1230 ,'CUOI KI',444,'01:35:20',103,'2022-02-22');
INSERT INTO `Exam`(ExamID,Code,Title,CategoryID,Duration,CreatorID,CreateDate)VALUES (040,1240 ,'CUOI KI',222,'01:35:20',104,'2022-02-22');

INSERT INTO `ExamQuestion`(ExamID,QuestionID)VALUES (010,001);
INSERT INTO `ExamQuestion`(ExamID,QuestionID)VALUES (020,002);
INSERT INTO `ExamQuestion`(ExamID,QuestionID)VALUES (030,003);
INSERT INTO `ExamQuestion`(ExamID,QuestionID)VALUES (040,004);

/*
											"Testing_System_Assignment_4"
											*/
/*
Question 1: Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ
*/
SELECT D.*,P.*,A.*
FROM Department D INNER JOIN Account A ON D.DepartmentID =A.DepartmentID inner join Position_m P ON A.PositionID=P.PositionID;
/*
Question 2: Viết lệnh để lấy ra thông tin các account được tạo sau ngày 20/12/2010
*/
SELECT *
FROM Account
WHERE CreateDate > '2010-12-20';
/*
Question 3: Viết lệnh để lấy ra tất cả các developer
*/
SELECT *
FROM Account A inner join Position_m P ON A.PositionID=P.PositionID
WHERE P.PositionName = 'developer';
/*
Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
*/
SELECT D.DepartmentName AS TÊN_PHÒNG,COUNT(A.AccountID) AS Số_Lượng_Nhân_Viên
FROM Department D INNER JOIN Account A  ON D.DepartmentID=A.DepartmentID
GROUP BY D.DepartmentName
HAVING Số_Lượng_Nhân_Viên=3;

/*
Question 5: Viết lệnh để lấy ra danh sách câu hỏi được sử dụng trong đề thi nhiều
nhất
*/
SELECT q.QuestionID, q.Content, COUNT(E.ExamID) AS SỬ_DỤNG_NHIỀU_NHẤT
FROM Question q JOIN ExamQuestion EQ ON q.QuestionID = EQ.QuestionID JOIN Exam E ON E.ExamID=EQ.ExamID
GROUP BY q.QuestionID, q.Content
ORDER BY SỬ_DỤNG_NHIỀU_NHẤT DESC
LIMIT 10; 
/*
Question 6: Thông kê mỗi category Question được sử dụng trong bao nhiêu Question
*/
SELECT c.CategoryName, COUNT(QuestionID) AS Số_câu_hỏi_mỗi_loại
FROM Question q join CategoryQuestion c on q.CategoryID=c.CategoryID
GROUP BY c.CategoryName;
/*
Question 7: Thông kê mỗi Question được sử dụng trong bao nhiêu Exam
*/
SELECT c.CategoryName, COUNT(ExamID) AS Số_Đề_Thi
FROM Question q join CategoryQuestion c on q.CategoryID =c.CategoryID join Exam E ON c.CategoryID=E.CategoryID
GROUP BY c.CategoryName