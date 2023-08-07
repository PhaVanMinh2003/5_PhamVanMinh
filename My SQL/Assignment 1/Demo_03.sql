/*
Exercise 2: Data Types
Bảng bên dưới sẽ có ít nhất 1 triệu bản ghi, có chứa các thông tin sau:
Bạn phải chọn 1 kiểu dữ liệu phù hợp để tối ưu không gian lưu trữ mỗi hàng của bảng
*/
DROP DATABASE IF exists `DEMO_BT3`;
CREATE DATABASE `DEMO_BT3`;
 CREATE TABLE `DEMO3`
 (
 ID				INT(10) AUTO_INCREMENT 	NOT NULL PRIMARY KEY,
 Name			VARCHAR(20) 			NOT NULL,
 BirthDate		DATETIME				NOT NULL,
 Gender			ENUM('0','1','2'),/*0 : Male, 1: Female, 2: Unknown*/
 IsDeletedFlag	ENUM('0','1')/*0 là đang hoạt động, 1 là đã xóa.*/
 );