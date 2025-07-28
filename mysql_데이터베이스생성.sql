create table member(
	member_id int auto_increment primary key,
    name varchar(50) not null,
    email varchar(100) unique not null,
    created_at  datetime default current_timestamp
);
desc member;

create table product(
	product_id int auto_increment primary key,
    name varchar(100) not null,
    price decimal(10,2)  not null,
    stock  int default 0
);
desc product;

show tables;
create table `order`(
	order_id int auto_increment primary key,
    member_id int,
    order_date datetime  default current_timestamp,
    status  varchar(20) default '주문완료',
    constraint fk_member_id foreign key(member_id)
		references member(member_id)
);
alter table order1 rename to `order`;
-- constraint fk_sid_student foreign key(sid) -- mul이 외래키
-- references subject(sid)
drop table order1;
show tables;
desc order1;



create table orderitem (
	order_item_id int auto_increment primary key,
    order_id int,
    product_id int,
    quantity int not null,
    constraint fk_order_id foreign key(order_id)
		references order1(order_id),
    constraint fk_product_id foreign key(product_id)
		references product(product_id)    
);
desc orderitem;

alter table orderitem
	add column unit_price decimal(10,2) not null;


-- alter table order1 rename to order2;
-- alter table order1
-- change column order_date1 order_date datetime;
