create table ORDERS
(
    id serial,
    date date,
    customer_id int,
    product_name varchar(255),
    amount int,
    primary key (id),
    foreign key (customer_id) references customers (id)
);

create table CUSTOMERS
(
    id serial,
    name varchar(255) not null,
    surname varchar(255) not null,
    age int check(age<120), check(age>0),
    phone_number varchar(12),
    primary key (id)
);