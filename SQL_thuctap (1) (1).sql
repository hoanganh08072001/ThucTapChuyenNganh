CREATE DATABASE ThucTap
GO
USE ThucTap
GO
-- Category table
CREATE TABLE Category(
Categoryid int PRIMARY KEY not null,
CategoryName nvarchar(150) not null,
MetaTitle varchar(50)
)
GO
INSERT INTO Category VALUES(1, 'Adidas', 'adidas')
INSERT INTO Category VALUES(2, 'Nike', 'nike')
INSERT INTO Category VALUES(3, 'Dior', 'dior')
INSERT INTO Category VALUES(4, 'MBL', 'mbl')

GO
--Product table
CREATE TABLE Product(
Pid int PRIMARY KEY not null,
Categoryid int FOREIGN KEY REFERENCES Category(Categoryid),
ProdName nvarchar(250) not null,
MetaTitle varchar(50),
Description nvarchar(250),
ImagePath nvarchar(550) not null,
Price decimal(18,2) not null,

)
INSERT INTO Product VALUES(1, 1 , N'Adidas trắng', 'adidas - trang' , N'Loại mới nhất' , 'Anh/1.jpg' ,1600000)
INSERT INTO Product VALUES(2, 1 , N'Adidas đỏ', 'adidas - do' , N'Loại bán chạy nhất' , 'Anh/5.jpg' ,900000)
INSERT INTO Product VALUES(3, 1 , N'Adidas đen', 'adidas - den' , N'Loại bán chạy nhất' , 'Anh/2.png' ,1000000)
INSERT INTO Product VALUES(4, 1 , N'Adidas athletics', 'adidas - athletics' , N'Loại mới nhất' , 'Anh/3.jfif' ,1500000)
INSERT INTO Product VALUES(5, 1 , N'Adidas xanh', 'adidas - xanh' , N'Loại mới nhất' , 'Anh/4.jpg' ,1400000)
INSERT INTO Product VALUES(6, 2 , N'Nike trắng', 'nike - trang' , N'Loại bán chạy nhất' , 'Anh/6.jpg' ,750000)
INSERT INTO Product VALUES(7, 2 , N'Nike đen', 'nike - den' , N'Loại mới nhất' , 'Anh/7.png' ,7900000)
INSERT INTO Product VALUES(8, 2 , N'Nike hoodie', 'nike - hoodie' , N'Loại mới nhất' , 'Anh/8.jpg' ,1200000)
INSERT INTO Product VALUES(9, 2 , N'Nike cộc', 'nike - coc' , N'Loại phổ biến' , 'Anh/9.jpg' ,1500000)
INSERT INTO Product VALUES(10,2 , N'Nike trắng', 'nike - trang' , N'Loại bán chạy nhất' , 'Anh/10.jpg' ,4500000)
INSERT INTO Product VALUES(11,3 , N'Dior cộc', 'dior - coc' , N'Loại phổ biến' , 'Anh/11.jfif' ,7500000)
INSERT INTO Product VALUES(12,3 , N'Dior atelier', 'dior - atelier' , N'Loại bán chạy' , 'Anh/12.jfif' ,700000)
INSERT INTO Product VALUES(13,3 , N'Dior đen', 'dior - den' , N'Loại phổ biến' , 'Anh/13.jfif' ,1500000)
INSERT INTO Product VALUES(14,3 , N'Dior basic', 'dior - basic' , N'Loại bán cháy nhất' , 'Anh/14.jfif' ,600000)
INSERT INTO Product VALUES(15,3 , N'Dior 2021', 'dior - 2021' , N'Loại phổ biến' , 'Anh/15.jpg' ,900000)
INSERT INTO Product VALUES(16,4 , N'MBL đen', 'mbl - den' , N'Loại phổ biến' , 'Anh/16.jpg' ,500000)
INSERT INTO Product VALUES(17,4 , N'MBL caro', 'mbl - caro' , N'Loại bán chạy' , 'Anh/17.png' ,4500000)
INSERT INTO Product VALUES(18,4 , N'MLB like', 'mlb - like' , N'Loại bán chạy nhất' , 'Anh/18.jpg' ,900000)
INSERT INTO Product VALUES(19,4 , N'MLB vàng', 'mlb - vang' , N'Loại phổ biến' , 'Anh/19.jpg' ,1000000)
INSERT INTO Product VALUES(20,4 , N'MLB trắng', 'mlb - trang' , N'Loại phổ biến' , 'Anh/20.jpg' ,600000)