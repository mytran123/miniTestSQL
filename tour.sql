CREATE DATABASE `tour`;
USE `tour`;

CREATE TABLE `Tour_Places` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar (50),
    description text,
    avg_price varchar (50),
    city_id varchar(50)
)

INSERT INTO `Tour_Places` (`name`,`description`,`avg_price`,`city_id`) VALUES
("Viet Nam","Du lich trong nuoc, gia re","5000000","Sai Gon"),
("Nhat Ban","Du lich nuoc ngoai, gia dat do","50000000","Fukuoka"),
("Singapore","Du lich nuoc ngoai, gia tam trung","2000000","Tp Nao Do"),
("Viet Nam","Du lich trong nuoc, gia re","5500000","Ha Noi"),
("Viet Nam","Du lich trong nuoc, gia re","6000000","Ninh Binh")

CREATE TABLE `Customers` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar (50),
    CCCD varchar (50),
    born_year varchar (50),
    city_id varchar (50)
)

INSERT INTO `Customers` (`name`,`CCCD`,`born_year`,`city_id`) VALUES
("Thuy An","0000001","1996","Sai Gon"),
("Nhat An","0000002","2002","Sai Gon"),
("Xuan Anh","0000003","1998","Phu Tho"),
("Huy Hoang","0000004","2001","Nam Dinh"),
("Tuyet Nhi","0000005","2005","Ninh Binh"),
("Chi Thanh","0000006","1989","Bac Ninh"),
("Bui Vien","0000007","2000","Binh Duong"),
("Minh Anh","0000008","1987","Dong Nai"),
("Nhat Huy","0000009","1985","Phu Yen"),
("Nhat Anh","0000010","1993","Yen Bai")

CREATE TABLE `Cities` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar (50)
)

INSERT INTO `Cities` (`name`) VALUES
("Sai Gon"), ("Ha Noi"), ("Hai Duong"), ("Thai Binh"), ("Quang Nam")

CREATE TABLE `Tours` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tour_code varchar (50),
    tour_type varchar (50),
    price varchar (50),
    date_start date,
    date_end date
)

INSERT INTO `Tours` (`tour_code`,`tour_type`,`price`,`date_start`,`date_end`) VALUES
("A1","Cheap-Slow","200001","2021/03/01","2021/03/03"),
("A2","Cheap-Fast","200002","2021/03/04","2021/03/06"),
("A3","Fast","200003","2021/03/07","2021/03/09"),
("B1","Cheap-Slow","200004","2021/03/10","2021/03/12"),
("B2","Cheap-Fast","200005","2021/03/13","2021/03/15"),
("B3","Fast","200006","2021/03/16","2021/03/19"),
("C1","Cheap-Slow","200007","2021/03/20","2021/03/23"),
("C2","Cheap-Fast","200008","2021/03/24","2021/03/27"),
("C3","Fast","200009","2021/03/28","2021/03/30"),
("D1","Cheap-Slow","200010","2021/04/01","2021/04/04"),
("D2","Cheap-Fast","200011","2021/04/05","2021/04/07"),
("D3","Fast","200012","2021/04/08","2021/04/12"),
("E1","Cheap-Slow","200013","2021/04/13","2021/04/15"),
("E2","Cheap-Fast","200014","2021/04/16","2021/04/19"),
("E3","Fast","200015","2021/04/20","2021/04/23")

CREATE TABLE `Tour_Types` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    type_code varchar (50),
    name varchar (50)
)

INSERT INTO `Tour_Types` (`type_code`,`name`) VALUES
("L1","Ngan ngay"),
("L2","Dai ngay")

CREATE TABLE `Bills` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tour_id varchar (50),
    customer_id varchar (50),
    status varchar (50)
)

INSERT INTO `Bills` (`tour_id`,`customer_id`,`status`) VALUES
("T1","K1","Da thanh toan"),
("T2","K2","Da thanh toan"),
("T3","K3","Da thanh toan"),
("T4","K4","Da thanh toan"),
("T5","K5","Da thanh toan"),
("T6","K6","Chua thanh toan"),
("T7","K7","Chua thanh toan"),
("T8","K8","Chua thanh toan"),
("T9","K9","Chua thanh toan"),
("T10","K10","Chua thanh toan")

SELECT categories.name,products.* FROM `tours`
INNER JOIN `category_product` ON categories.id = category_product.category_id
INNER JOIN `products` ON category_product.product_id = products.id
WHERE categories.id = 2