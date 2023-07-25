CREATE TABLE customer(
         customer_id int NOT NULL,
         customer_name char(50),
         delivery_address char(200),
         gender char(10),
         email char(50),
         dateOfBirth char(20),
         pw char(20),
         contact_details long,
         order_details char(30),
         payment_info char(30),
         city char(20),
         typeOfCustomer char(10),
         PRIMARY KEY (customer_id));
INSERT INTO customer VALUES(12,'Jyoti','Delhi','Female','email@gmail.com','10/10/10','password',123456,'Study Lamp','Rupay Card details','Delhi','Normal');
INSERT INTO customer VALUES(10,'Gudiya','Hydrabad','Female','gmail@email.com','10/10/10','password',123456,'Study Lamp','Rupay Card details','Delhi','Normal');

CREATE TABLE seller(
         seller_id int NOT NULL,
         seller_name char(50),
         seller_address char(200),
         mobile_num long,
         pass char(20),
         categoriesOfProducts int,
         PRIMARY KEY (seller_id));
INSERT INTO seller VALUES(1,'SkillLync','Mumbai',124353,'password',5);
INSERT INTO seller VALUES(2,'Skill','Chennai',1244353,'password',3);

CREATE TABLE coupon(
		 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
		 discount FLOAT( 3, 2 ) NOT NULL ,
		 coupon_code VARCHAR( 255 ) NOT NULL ,
		 coupons_status BOOLEAN NOT NULL ,     # '1' coupon used and '0' shows not used
		 emailed BOOLEAN NOT NULL);            # '1' mailed and '0' shows not mailed
INSERT INTO coupon VALUES(1,2.3,'ASDFGHJKL',0,1);
INSERT INTO coupon VALUES(4,5.9,'QWERTY',1,0);

CREATE TABLE wishList(
          product_id int NOT NULL,
          product_name char(20),
          product_details char(50),
          price int,
          numOfProducts int);
INSERT INTO wishList VALUES(1,'Lamp','Fine Lamp',1800,7);
INSERT INTO wishList VALUES(2,'Wall painting','Nice painting',1800,12);

CREATE TABLE reviews(
          reviewer_id int,
          avgRatings float,
          totalRatings int,
          reviewCountry char(20));
INSERT INTO reviews VALUES(1,4.3,60,'India');
INSERT INTO reviews VALUES(2,3.9,40,'India');

CREATE TABLE orders(
          order_id int PRIMARY KEY,
          customer_id int,
          order_details char(30),
          shipment_address char(20),
          cost int,
          order_status BOOLEAN NOT NULL,  # '1' shows deliverd and '0' not delivered 
          orderDate date);
INSERT INTO orders VALUES(2,10,'Order Placed','Delhi',10000,0,'2022-01-01');
INSERT INTO orders VALUES(7,12,'Order is Placed','Delhi',2999,1,'2021-01-02');

CREATE TABLE productCategory(
          category_id int PRIMARY KEY,
          category_name char(20),
          category_type char(100));
INSERT INTO productCategory VALUES(2,'Painting','Wall Paint');
INSERT INTO productCategory VALUES(21,'Lamp','Study Lamp');

CREATE TABLE payment(
          payment_details char(50),
          payment_id int PRIMARY KEY,
          totalAmount int,
          shipment_address char(20));
INSERT INTO payment VALUES('Rupay Card',12,12000,'Delhi');

CREATE TABLE shipmentDetails(
          order_id int PRIMARY KEY,
          customer_name char(50),
          deliveryDate date,
          deliveryDay char(10),
          deliveryTime time,
          shipment_address char(20));
INSERT INTO shipmentDetails VALUES(12,'Jyoti','2022-02-02','Tuesday','10:30','Delhi');

CREATE TABLE product(
          product_id int PRIMARY KEY,
          product_name char(20),
          product_color char(10),
          seller_details char(50),
          sizesAvailable int,
          quantityOfProducts int,
          price int,
          discount float,
          placeOfOrigin char(20),
          avgRatings float,
          totalRatings int,
          reviewCountry char(20),
          reviewsForRatings char(100));
INSERT INTO product VALUES(2,'shoe','Green','Delhi',7,10,1000,34.0,'India',4.5,180,'India','Nice quality of shoe');

CREATE TABLE isOnSale(
          category char(10),
          brands char(20),
          image char(255));
INSERT INTO isOnSale VALUES('Foot-Wear','Slippers','https://rukminim1.flixcart.com/image/612/612/l0igvww0/shoe');

CREATE TABLE ansQuewithSeller(
          product_description char(100),
          tags char(20),
          relatedProducts char(20));
INSERT INTO ansQuewithSeller VALUES('Nice quality of shoe','Shoes','Slippers');
