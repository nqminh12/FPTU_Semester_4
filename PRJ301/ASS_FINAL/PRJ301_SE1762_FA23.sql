create database PRJ301_SE1762_FA23
drop database PRJ301_SE1762_FA23
CREATE TABLE Users_HE176167 (
  user_id INT PRIMARY KEY IDENTITY,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  full_name VARCHAR(100),
  phone_number VARCHAR(20),
  isAdmin bit,
);

/*
CREATE TABLE Addresses_HE176167 (
  address_id INT PRIMARY KEY IDENTITY,
  user_id INT FOREIGN KEY REFERENCES Users_HE176167(user_id),
  city VARCHAR(50),
  state VARCHAR(50),
  country VARCHAR(50)
);
*/

CREATE TABLE Categories_HE176167 (
  category_id INT PRIMARY KEY IDENTITY,
  category_name VARCHAR(50) NOT NULL,
  [description] text,
);

CREATE TABLE Products_HE176167 (
  product_id INT PRIMARY KEY IDENTITY,
  product_name VARCHAR(100) NOT NULL,
  description TEXT,
  price DECIMAL(10,2) NOT NULL,
  category_id INT FOREIGN KEY REFERENCES Categories_HE176167(category_id) ON DELETE CASCADE,
  image_url VARCHAR(255),
  quantity_in_stock int not null,
  quantity_sold int not null,
);


CREATE TABLE Reviews_HE176167 (
  --review_id INT PRIMARY KEY IDENTITY,
  product_id INT FOREIGN KEY REFERENCES Products_HE176167(product_id)  ON DELETE CASCADE,
  user_id INT FOREIGN KEY REFERENCES Users_HE176167(user_id) ON DELETE CASCADE,
  rating INT,
  comment nvarchar(255),
  review_date nvarchar(255),
  primary key (product_id, user_id)
);

drop table Reviews_HE176167










CREATE TABLE Orders_HE176167 (
  orderID INT PRIMARY KEY IDENTITY(1,1),
  user_id INT NOT NULL,
  [date] VARCHAR(255) , 
  [address]  NVARCHAR(MAX) ,
  phonenumber VARCHAR(255),
  totalmoney float,
  status int not null,
  FOREIGN KEY (user_id) REFERENCES Users_HE176167(user_id) ON DELETE CASCADE,
);


drop table OrderDetails_HE176167
drop table Orders_HE176167





CREATE TABLE OrderDetails_HE176167 (
  id  INT PRIMARY KEY IDENTITY,
  orderID INT FOREIGN KEY REFERENCES Orders_HE176167(orderID) not null ON DELETE CASCADE,
  product_id INT FOREIGN KEY REFERENCES Products_HE176167(product_id) ON DELETE CASCADE,
  quantity INT NOT NULL
);

insert into OrderDetails_HE176167(orderID, [name], quantity, price)
values (1,'sd gundam',4,400)




CREATE TABLE Cart_HE176167 (
  cart_id INT PRIMARY KEY IDENTITY,
  
  quantity INT,
  
  user_id INT FOREIGN KEY REFERENCES Users_HE176167(user_id) ON DELETE CASCADE,
  product_id INT FOREIGN KEY REFERENCES Products_HE176167(product_id) ON DELETE CASCADE,
);
drop table Cart_HE176167




-- Insert
INSERT INTO Categories_HE176167(category_name, description)
VALUES 
('SD', 'Super Deformed'),
('HG', 'High Grade'), 
('RG', 'Real Grade'),
('MG', 'Master Grade'),
('PG', 'Perfect Grade');

select * from Categories_HE176167

INSERT INTO Products_HE176167 (product_name, description, price, category_id, image_url, 
  quantity_in_stock, quantity_sold)
VALUES
('SD Gundam Exia', 'SD Gundam Exia model kit', 20.99, 1, 'exia_sd.jpg',  50,50),  
('SD Gundam Zaku II', 'SD Gundam Zaku II model kit', 15.99, 1, 'zaku_sd.jpg',  70,50),
('SD Sangoku Soketsuden', 'SD Sangoku Soketsuden model kit', 18.99, 1, 'sangoku_sd.jpg',  100,50),
('SD Gundam Deathscythe', 'SD Gundam Deathscythe model kit', 16.99, 1, 'deathscythe_sd.jpg',  120,50),
('SD XXXG-01W Wing Gundam', 'SD Wing Gundam model kit', 19.99, 1, 'wing_sd.jpg',  200,50),
('SD Gundam Sandrock ', 'SD Gundam Sandrock model kit', 17.99, 1, 'sandrock_sd.jpg',  250,50),
('SD XXXG-00W0 Wing Gundam Zero', 'SD Wing Zero Gundam model kit', 16.99, 1, 'wingzero_sd.jpg',  300,50),
('SD LM314V21 Victory 2 Gundam', 'SD Victory 2 Gundam model kit', 18.99, 1, 'victory2_sd.jpg',  180,50),

('HG Gundam Dynames', 'HG Gundam Dynames model kit', 29.99, 2, 'dynames_hg.jpg',  80,50),
('HG Gundam Barbatos Lupus', 'HG Gundam Barbatos Lupus model kit', 34.99, 2, 'barbatos_lupus_hg.jpg', 60,50),
('HG Gundam Kimaris', 'HG Gundam Kimaris model kit', 24.99, 2, 'kimaris_hg.jpg',  70,50),
('HG Gundam Vidar', 'HG Gundam Vidar model kit', 29.99, 2, 'vidar_hg.jpg',  150,70), 
('HG Gundam Bael', 'HG Gundam Bael model kit', 24.99, 2, 'bael_hg.jpg', 100,70),
('HG Gundam Virtue', 'HG Gundam Virtue model kit', 24.99, 2, 'virtue_hg.jpg', 220,70),
('HG Gundam Deathscythe Hell', 'HG Gundam Deathscythe Hell model kit', 27.99, 2, 'deathscythe_hell_hg.jpg',  260,70), 
('HG Gundam Altron', 'HG Gundam Altron model kit', 29.99, 2, 'altron_hg.jpg',  200,70),

('RG Hi-Nu Gundam', 'RG Hi-Nu Gundam model kit', 49.99, 3, 'hinu_rg.jpg',   30,70),  
('RG Sazabi Gundam', 'RG Sazabi Gundam model kit', 39.99, 3, 'sazabi_rg.jpg',  20,100),
('RG Nu Gundam', 'RG Nu Gundam Ver.Ka model kit', 54.99, 3, 'nu_rg.jpg',  15,100),
('RG Destiny Gundam', 'RG Destiny Gundam model kit', 54.99, 3, 'destiny_rg.jpg',  50,100),
('RG Strike Freedom Gundam', 'RG Strike Freedom Gundam model kit', 59.99, 3, 'strikefreedom_rg.jpg', 30,100),
('RG Force Impulse Gundam', 'RG Force Impulse Gundam model kit', 49.99, 3, 'impulse_rg.jpg',  40,100),

('MG Dynames Gundam','MG Dynames Gundam model kit', 89.99, 4, 'dynames_mg.jpg', 10,100),
('MG Freedom Gundam 2.0', 'MG Freedom Gundam 2.0 model kit', 99.99, 4, 'freedom_mg.jpg', 5,100), 
('MG Sinanju Gundam', 'MG Sinanju Gundam model kit', 149.99, 4, 'sinanju_mg.jpg',  8,100),
('MG Tallgeese III', 'MG Tallgeese III model kit', 149.99, 4, 'tallgeese3_mg.jpg', 20,100),
('MG Gundam Astray Red Frame', 'MG Gundam Astray Red Frame model kit', 139.99, 4, 'astray_red_mg.jpg',  15,100),
('MG Gundam Exia', 'MG Gundam Exia model kit', 169.99, 4, 'exia_mg.jpg',  10,100),

('PG Unicorn Gundam', 'PG Unicorn Gundam model kit', 299.99, 5, 'unicorn_pg.jpg',  3,390),
('PG Strike Gundam', 'PG Strike Gundam model kit', 349.99, 5, 'strike_pg.jpg',  2,290),
('PG 00 Raiser', 'PG 00 Raiser model kit', 399.99, 5, '00raiser_pg.jpg', 1,400),
('PG Astray Red 6 arms', 'PG Astray Red 6 arms model kit', 599.00, 5, 'IMG_0882.JPG',1,978);

INSERT INTO Products_HE176167 (product_name, description, price, category_id, image_url, 
  quantity_in_stock, quantity_sold)
VALUES ('PG Astray Red 6 arms', 'PG Astray Red 6 arms model kit', 599.00, 5, 'IMG_0882.JPG',1,978);

select * from Products_HE176167
Update Products_HE176167 set category_id = 5 where product_id = 31
DELETE FROM Products_HE176167;

DELETE FROM Products_HE176167;

DBCC CHECKIDENT ('Products_HE176167', RESEED, 0);





INSERT INTO Users_HE176167(username, password, email, full_name, phone_number, isAdmin) 
VALUES
  ('nguyenvana', '123456', 'nguyenvana@gmail.com', 'Nguyen Van A', '0987654321',1),
  ('nguyenvanb', '123456', 'nguyenvanb@gmail.com', 'Nguyen Van B', '0987654322',0),
  ('nguyenvanc', '123456', 'nguyenvanc@gmail.com', 'Nguyen Van C', '0987654323',0),
  ('nguyenvand', '123456', 'nguyenvand@gmail.com','Nguyen Van D', '0987654324',0),
  ('nguyenvane', '123456', 'nguyenvane@gmail.com', 'Nguyen Van E', '0987654325',0),
  ('nguyenvanf', '123456', 'nguyenvanf@gmail.com', 'Nguyen Van F', '0987654326',0),
  ('nguyenvang', '123456', 'nguyenvang@gmail.com', 'Nguyen Van G', '0987654327',0),
  ('nguyenvanh', '123456', 'nguyenvanh@gmail.com', 'Nguyen Van H', '0987654328',0),
  ('nguyenvani', '123456', 'nguyenvani@gmail.com', 'Nguyen Van I', '0987654329',0),
  ('nguyenvanj', '123456', 'nguyenvanj@gmail.com', 'Nguyen Van J', '0987654330',0),
  ('nguyenvans', '123456', 'nguyenvans@gmail.com', 'Nguyen Van S', '0987654341',0),
  ('nguyenvant', '123456', 'nguyenvant@gmail.com', 'Nguyen Van T', '0987654342',0),
  ('nguyenvanu', '123456', 'nguyenvanu@gmail.com', 'Nguyen Van U', '0987654343',0),
  ('nguyenvanv', '123456', 'nguyenvanv@gmail.com', 'Nguyen Van V', '0987654344',0),
  ('nguyenvanw', '123456', 'nguyenvanw@gmail.com', 'Nguyen Van W', '0987654345',0),
  ('nguyenvanx', '123456', 'nguyenvanx@gmail.com', 'Nguyen Van X', '0987654346',0),
  ('nguyenvany', '123456', 'nguyenvany@gmail.com', 'Nguyen Van Y', '0987654347',0),
  ('nguyenvanz', '123456', 'nguyenvanz@gmail.com', 'Nguyen Van Z', '0987654348',0)
;

INSERT INTO Users_HE176167(username, password, email, full_name, phone_number, isAdmin) 
VALUES ('nguyenvani', '123456', 'nguyenvani@gmail.com', 'Nguyen Van I', '0987654329',0),
  ('nguyenvanj', '123456', 'nguyenvanj@gmail.com', 'Nguyen Van J', '0987654330',0),
    ('nguyenvanw', '123456', 'nguyenvanw@gmail.com', 'Nguyen Van W', '0987654345',0)

select * from Users_HE176167
DELETE FROM Users_HE176167
DBCC CHECKIDENT ('Users', RESEED, 0);
select * from Users_HE176167 where username = 'nguyenvana' and password ='123456'

insert into Addresses_HE176167(user_id, city, state, country)
VALUES
(2, 'Hanoi', 'Ha Noi', 'Vietnam'),
(2, 'Ho Chi Minh', 'HCM', 'Vietnam'),
(3, 'Da Nang', 'Da Nang', 'Vietnam'),
(4, 'New York', 'New York', 'USA'),
(5, 'London', 'England', 'United Kingdom');

select * from Cart_HE176167

insert into Cart_HE176167 (quantity, user_id, product_id) values(?,?,?)






