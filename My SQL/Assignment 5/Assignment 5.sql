use ql_hoctap;
-- Question 1: Tạo view có chứa danh sách nhân viên thuộc phòng ban sale
CREATE VIEW V_DSNVsale
AS
	SELECT		A.*, D.DepartmentName
	FROM 		`Account` A INNER JOIN 	`Department` D ON A.DepartmentID = D.DepartmentID
	WHERE		D.DepartmentName = 'Sale';
DROP VIEW V_TTAC;
--------------------
SELECT 	*
FROM 	V_DSNVsale;
--------------------
/*
Question 2: Tạo view có chứa thông tin các account tham gia vào nhiều group nhất
*/
CREATE VIEW V_TTAC
AS
SELECT A.*
FROM			(
				SELECT A.*,COUNT(G.AccountID) AS SOLUONG
				FROM Account A inner join GroupAccount G ON A.AccountID = G.AccountID 
				GROUP BY A.AccountID
				ORDER BY COUNT(G.AccountID) DESC
				LIMIT 1
				)A;
-------------------
SELECT 	*
FROM 	V_TTAC;
-------------------
/*
Question 3: Tạo view có chứa câu hỏi có những content quá dài (content quá 300 từ được coi là quá dài) và xóa nó đi
*/
CREATE VIEW V_MAXCONTENt
AS
SELECT LENGTH(Content)
FROM question
WHERE LENGTH(Content)>300;
-----------------------
SELECT 	*
FROM 	V_MAXCONTENt;
-----------------------
/*
Question 4: Tạo view có chứa danh sách các phòng ban có nhiều nhân viên nhất
*/
CREATE VIEW V_PB_NHIEUNV1
AS
SELECT D.DepartmentName ,COUNT(A.AccountID)
FROM Department D JOIN Account A ON D.DepartmentID=A.DepartmentID
GROUP BY D.DepartmentName 
ORDER BY COUNT(A.AccountID) DESC
LIMIT 1;
----------------------
SELECT 	*
FROM 	V_PB_NHIEUNV1;
----------------------
/*
/*Question 5: Tạo view có chứa tất các các câu hỏi do user họ Nguyễn tạo*/

CREATE VIEW V_USER_HoNguyen
AS
SELECT Q.Content,A.FullName
FROM Question Q JOIN Account A ON Q.CreatorID=A.AccountID
WHERE SUBSTRING_INDEX(A.FullName,' ',1) = 'Nguyen';
---------------------------
SELECT 	*
FROM 	V_USER_HoNguyen;
--------------------------