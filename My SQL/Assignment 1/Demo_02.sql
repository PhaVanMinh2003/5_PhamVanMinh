/*
Exercise 2: Data Types
Bảng bên dưới sẽ có ít nhất 1 triệu bản ghi, có chứa các thông tin sau:
Bạn phải chọn 1 kiểu dữ liệu phù hợp để tối ưu không gian lưu trữ mỗi hàng của bảng
*/
DROP DATABASE IF exists `DEMO_BT2`;
CREATE DATABASE `DEMO_BT2`;
 CREATE TABLE `DEMO`
 (
 ID				INT(10) AUTO_INCREMENT 	NOT NULL PRIMARY KEY,
 Name			VARCHAR(50) 			NOT NULL,
 Code			CHAR(5)					NOT NULL,
 ModifiedDate 	DATETIME DEFAULT NOW()
 );