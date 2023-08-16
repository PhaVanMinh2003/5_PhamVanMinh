DROP DATABASE  IF exists `Assignment 6`;
CREATE DATABASE `Assignment 6`;
USE `Assignment 6`;
CREATE TABLE Project_Modules
(
ModuleID TINYINT(10) NOT NULL PRIMARY KEY,
ProjectID TINYINT(10) NOT NULL,
EmployeeID TINYINT(10) NOT NULL,
ProjectModulesDate DATE NOT NULL,
ProjectModulesCompleOn DATETIME NOT NULL ,
ProjectModulesDescription NVARCHAR(100) NOT NULL 
);

CREATE TABLE Project
(
ProjectID TINYINT(10) NOT NULL PRIMARY KEY,
managerID TINYINT(10) NOT NULL,
ProjectName NVARCHAR(50) NOT NULL,
ProjectStarDate DATE NOT NULL,
ProjectDescription NVARCHAR(100) NOT NULL ,
ProjectDetail NVARCHAR(100) NOT NULL,
ProjectCompletedOn DATE NOT NULL
);

CREATE TABLE Employee
(
EmployeeID TINYINT(10) NOT NULL PRIMARY KEY,
EmployeeLastName NVARCHAR(30) NOT NULL,
EmployeeFistName NVARCHAR(30) NOT NULL,
EmployeeHireDate DATE NOT NULL,
EmployeeStatus NVARCHAR(100) NOT NULL ,
SupervisorID TINYINT(10) NOT NULL,
SocialSecurityNumber NVARCHAR(50)
);
CREATE TABLE Work_Done
(
WorkDoneID TINYINT(10) NOT NULL PRIMARY KEY,
EmployeeID TINYINT(10) NOT NULL,
ModuleID TINYINT(10)  NOT NULL,
WorkDoneDate DATE NOT NULL,
WorkDoneDescription NVARCHAR(100) NOT NULL ,
workDoneStatus NVARCHAR(50)
);
ALTER TABLE Project_Modules ADD CONSTRAINT fk_Project FOREIGN KEY(ProjectID ) REFERENCES Project(ProjectID );
ALTER TABLE Project_Modules ADD CONSTRAINT fk_Employee FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID);
ALTER TABLE Project 		ADD CONSTRAINT fk_Employee_managerID FOREIGN KEY(managerID) REFERENCES Employee(EmployeeID);
ALTER TABLE Employee		ADD CONSTRAINT fk_Employee_SupervisorID FOREIGN KEY(SupervisorID) REFERENCES Employee(EmployeeID);
ALTER TABLE Work_Done		ADD CONSTRAINT fk_Employee_wd FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID);
ALTER TABLE Work_Done		ADD CONSTRAINT fk_Project_Modules FOREIGN KEY(ModuleID) REFERENCES Project_Modules(ModuleID);
/* ====INSERT DỮ LIỆU===== */
INSERT INTO Employee		(EmployeeID, EmployeeLastName	, EmployeeFistName	, EmployeeHireDate	, EmployeeStatus, SupervisorID	, SocialSecurityNumber	)
VALUE						(001		,N'Nguyễn Hải'		,N'Đăng'			,'2019-06-06'		, 		1		,		1		,'SS001'				),
							(002		,N'Lê Thị'			,N'Thư'				,'2019-07-06'		, 		1		,		1		,'SS002'				),
                            (003		,N'Nguyễn Hữu'		,N'Thắng'			,'2019-08-06'		, 		1		,		2		,'SS003'				),
							(004		,N'Dương Văn'		,N'Hữu'				,'2019-07-06'		, 		0		,		2		,'SS004'				);

INSERT INTO Project		 ( ProjectID,ManagerID , ProjectName 		, ProjectStarDate	, ProjectDescription	, ProjectDetail		, ProjectCompletedOn	)
VALUE						(	010     ,	1		,'Java'				,	'2019-06-06'	, 'Làm đúng vào'		,'Làm đúng hạn'		,	'2019-08-06'		),
							(	020		,	2		,'C#'				,	'2019-07-06'	, 'Làm nhanh lên'		,'Làm trước hạn'	,	'2019-09-06'		),
                            (	030		,	3		,'Android'			,	'2019-08-06'	, 'Nộp trước ngày 17/3'	,'Làm quá hạn'		,	'2019-10-06'		),
                            (	040		,	1		,'C++'				,	'2019-07-06'	, 'Không biết đừng làm'	,'Làm trước hạn'	,	'2019-11-06'		);
                            
INSERT INTO Project_Modules (ModuleID	,ProjectID	, EmployeeID, ProjectModulesDate, ProjectModulesCompleOn	, ProjectModulesDescription	)
VALUE						(	10		,	010		,	001		,	'2019-06-06'	, '2019-06-06'				,	'Làm đúng hạn'			),
							(	20		,	020		,	002		,	'2019-07-06'	, '2019-06-06'				,	'Làm trước hạn'			),
                            (	30		,	030		,	003		,	'2019-08-06'	, '2019-09-06'				,	'Làm quá hạn'			),
                            (	40	,	040		,	004		,	'2019-07-06'	, '2019-06-06'				,	'Làm trước hạn'			);

INSERT INTO Work_Done		(WorkDoneID	, EmployeeID, ModuleID	, WorkDoneDate	, WorkDoneDescription	, WorkDoneStatus	)
VALUE						(	0010	,	001		,	10		,'2019-06-06'	, 'Làm được phết'		,		1			),
							(	0020	,	002		,	20		,'2019-07-06'	, 'Làm ổn phết'			,		1			),
                            (	0030	,	003		,	30		,'2019-08-06'	, 'Không biết làm'		,		0			),
                            (	0040	,	004		,	40		,'2019-07-06'	, 'Không biết ko làm'	,		0			);
                            
                            
/*Query*/
/*
a) Tạo table với các ràng buộc và kiểu dữ liệu và thêm ít nhất 3 bản ghi vào
mỗi table trên(Hoàn thành)
*/
/*
b) Viết stored procedure (không có parameter) để Remove tất cả thông tin
project đã hoàn thành sau 3 tháng kể từ ngày hiện. In số lượng record đã
remove từ các table liên quan trong khi removing (dùng lệnh print)
*/             
DROP PROCEDURE IF EXISTS remove_project_done;      
DELIMITER $$
CREATE PROCEDURE PR_TTproject_SAU3THANG()
BEGIN
          DECLARE Removee INT;
          DELETE FROM Projects 
          WHERE ProjectCompletedOn IS NOT NULL AND
				DATE_ADD(ProjectStartDate, INTERVAL 3 MONTH) > CURDATE();
				SET Removee = ROW_COUNT();
    -- Print the count of deleted records
		SELECT Removee;
END;
$$
DELIMITER ;      
call PR_TTproject_SAU3THANG();      
/*c) Viết stored procedure (có parameter) để in ra các module đang được thựchiện)
*/
DELIMITER $$
CREATE PROCEDURE IN_module(IN NHAP_ProjectID TINYINT UNSIGNED)
BEGIN
SELECT PM.ModuleID,PM.ProjectID,WK.WorkDoneDescription
FROM Project_Modules PM JOIN Work_Done WK ON PM.ModuleID=WK.ModuleID
WHERE PM.ProjectID=NHAP_ProjectID AND ProjectModulesCompleOn IS NULL;
END;
$$
DELIMITER ;
call IN_module(010);
/*d) Viết hàm (có parameter) trả về thông tin 1 nhân viên đã tham gia làm mặc
dù không ai giao việc cho nhân viên đó (trong bảng Works)
*/
                   /**/
DROP PROCEDURE `assignment 6`.`PR_EML`;
DELIMITER $$   
CREATE PROCEDURE PR_EML(IN NHAP_EmployeeID TINYINT UNSIGNED)
BEGIN 
SELECT EmployeeID,EmployeeLastName+''+EmployeeFistName
FROM Employee 											
WHERE EmployeeID NOT IN(SELECT EmployeeID FROM Work_Done);
END;
$$
DELIMITER ;  
CALL PR_EML(002);          