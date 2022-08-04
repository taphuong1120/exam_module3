create database test_md3;

use test_md3;

create table product (
id_product int auto_increment,
name_product varchar(255) not null,
price double not null,
quantity int not null,
color varchar(255) not null,
description varchar(255),
id_category int not null,
primary key (id_product),
constraint foreign key (id_category) references category (id_category)
);

create table category(
id_category int auto_increment,
name_category varchar(255) not null,
primary key (id_category)
);

insert into category (name_category) value ('Phone'),('Laptop'),('Television'),('Tablet'),('Keyboard');

insert into product (name_product, price, quantity, color, description, id_category) value ('iPhone 11', 799, 12, 'Purple, Yellow, Green', 'All-new-dual-camera system (Ultra Wide, Wide)', 1),
('iPhone 11 Pro', 1100, 12, 'Green, Black, White', 'All-new-dual-camera system (Ultra Wide, Wide)', 1), 
('iPhone X', 749, 13, 'Coral, Black, Blue', 'All-new-dual-camera system (Ultra Wide, Wide)', 1), 
('Smart TV 4K UHD 49 inch RU7300', 10000000, 5, 'Black', '', 3), 
('Samsung Galaxy S10E ', 420, 10, 'Prism White, Prism Blue, Ceramic Black', '', 1);