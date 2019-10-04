drop table if exists  items_raw;
create table items_raw (
    type varchar(50),
    item_type varchar(50),
    color varchar(50),
    shirt_size varchar(50),
    picture_size varchar(50),
    price bigint
);

insert into items_raw values ('Shirt', 'Combed 30s', 'White', 'A4', 'XS', 53000);
insert into items_raw values ('Shirt', 'Combed 30s', 'Black', 'A3', 'XXXXL', 124000);
insert into items_raw values ('Shirt', 'Combed 20s', 'White', 'A4', 'L', 63000);
insert into items_raw values ('Shirt', 'Combed 20s', 'Black', 'A3', 'XXXXL', 125000);

--1st Normal Form:
--1. Each Cell has single valued [correct]
--2. Entries in the column are same type [ correct]
--3. Unique Id [Seems like, but will have to add id to make unique row]
drop table if exists  items_first_nf;
create table items_first_nf (
    id bigint primary key,
    type varchar(50),
    item_type varchar(50),
    color varchar(50),
    shirt_size varchar(50),
    picture_size varchar(50),
    price bigint
);

insert into items_first_nf values (1, 'Shirt', 'Combed 30s', 'White', 'A4', 'XS', 53000);
insert into items_first_nf values (2, 'Shirt', 'Combed 30s', 'Black', 'A3', 'XXXXL', 124000);
insert into items_first_nf values (3, 'Shirt', 'Combed 20s', 'White', 'A4', 'L', 63000);
insert into items_first_nf values (4, 'Shirt', 'Combed 20s', 'Black', 'A3', 'XXXXL', 125000);

-- Second Normal Form: All attributes depends on the key...
-- Color, Item Type Shirt Size, Picture Size are not dependant on the key, the only thing which is dependant is price
-- because price is associated with the key while Item Type, Shirt Size, Picture Size are repeating so, making their tables
-- separately

drop table if exists  items_second_nf;
drop table if exists  type_second_nf;
drop table if exists  item_type_second_nf;
drop table if exists  color_second_nf;
drop table if exists  size_second_nf;
drop table if exists  picture_size_second_nf;

--table 2
create table type_second_nf(
    id bigserial primary key ,
    type varchar(50)
);


--table 3
create table item_type_second_nf(
    id bigserial primary key ,
    type varchar(50)
);


--table 4
create table size_second_nf(
    id bigserial primary key ,
    size varchar(50)
);


--table 5
create table color_second_nf(
    id bigserial primary key ,
    color varchar(50)
);


--table 6
create table picture_size_second_nf(
    id bigserial primary key ,
    size varchar(50)
);

--table 1
create table items_second_nf (
    id bigint primary key,
    type_id bigint,
    item_type_id bigint,
    color_id bigint,
    shirt_size_id bigint,
    picture_size_id bigint,
    price bigint,
    constraint  fk21 foreign key (type_id) references type_second_nf(id),
    constraint  fk22 foreign key (item_type_id) references item_type_second_nf(id),
    constraint  fk23 foreign key (color_id) references color_second_nf(id),
    constraint  fk24 foreign key (shirt_size_id) references size_second_nf(id),
    constraint  fk25 foreign key (picture_size_id) references picture_size_second_nf(id)
);


--Third Normal Form
--All the fields ccn be determine only by the key in the table and no other column
--as we are  creating redundant fields keys in the items tables
--we have to make another table (joint table) to remove this redundancy
--shop.sql is in the 3rd normalization form


