drop table if exists  item_type_relation;
drop table if exists  item_item_type_relation;
drop table if exists  color_item_relation;
drop table if exists  item_size_relation;
drop table if exists  item_picture_size_relation;

drop table if exists  size;
drop table if exists  color;
drop table if exists  type;
drop table if exists item_type;
drop table if exists  items;
drop table if exists  picture_size;

--table 1
create table items (
    id bigserial primary key,
    price bigint
);

--table 2
create table type(
    id bigserial primary key ,
    type varchar(50)
);

--relation 1
create table item_type_relation(
    id bigserial primary key ,
    item_id bigint,
    type_id bigint,
    constraint fk1 foreign key (item_id) references items(id),
    constraint fk2 foreign key (type_id) references type(id)
);

--table 3
create table item_type(
    id bigserial primary key ,
    type varchar(50)
);

--relation2
create table item_item_type_relation(
    id bigserial primary key ,
    item_id bigint,
    item_type_id bigint,
    constraint  fk3 foreign key (item_id) references items(id),
    constraint  fk4 foreign key (item_type_id) references item_type(id)
);

--table 4
create table size(
    id bigserial primary key ,
    size varchar(50)
);

--relation3
create table item_size_relation(
    id bigserial primary key ,
    item_id bigint,
    size_id bigint,
    constraint fk5 foreign key (item_id) references  items(id),
    constraint fk6 foreign key (size_id) references size(id)
);

--table 5
create table color(
    id bigserial primary key ,
    color varchar(50)
);

--relation4
create table color_item_relation(
    id bigserial primary key ,
    item_id bigint,
    color_id bigint,
    constraint  fk7 foreign key (item_id) references items(id),
    constraint fk8 foreign key (color_id) references color(id)
);


--table 6
create table picture_size(
    id bigserial primary key ,
    size varchar(50)
);

---relationship 5
create table item_picture_size_relation(
  id bigserial primary key ,
  item_id bigint,
  picture_size_id bigint,
  constraint  fk9 foreign key (item_id) references  items(id),
  constraint  fk10 foreign key (picture_size_id) references picture_size(id)
);



---------------------------------Insertion---------------------------------
insert into color (color) values('White'), ('Color without White Ink'),
                                 ('Black and Color with White Ink'),
                                 ('Black');

insert into type(type) values('Shirt'), ('Polo'), ('Hoodie'), ('Cap'), ('Tote Bag');

insert into item_type(type) values ('Combeds 30s'), ('Combeds 20s'), ('Polo'),
                                   ('Hoodie no Zipper'), ('Hoodie with Zipper'), ('Without Picture'),
                                   ('With Picture');

insert into size(size) values('XS'), ('S'), ('M'), ('L'), ('XL'), ('XXL'), ('XXXL'), ('XXXXL'), ('A4'), ('A3');

insert into picture_size(size) values ('A4'), ('A3');

insert into items(price)
    values
(53000), (56000), (59000), (62000), (65000), (68000), (75000), (85000), (59000), (62000),
(65000), (68000), (71000), (74000), (81000), (91000), (77000), (80000), (83000), (86000),
(89000), (92000), (99000), (109000), (92000), (95000), (98000), (101000), (104000), (107000),
(114000), (124000), (54000), (57000), (60000), (63000), (66000), (69000), (76000), (86000),
(60000), (63000), (66000), (69000), (72000), (75000), (82000), (92000), (78000), (81000),
(84000), (87000), (90000), (93000), (100000), (110000), (93000), (96000), (99000), (102000),
(105000), (108000), (115000), (125000), (60000), (63000), (66000), (69000), (72000), (75000),
(82000), (92000), (64000), (67000), (70000), (73000), (76000), (79000), (86000), (96000),
(87000), (90000), (93000), (96000), (99000), (102000), (109000), (119000), (160000), (162000),
(164000), (180000), (182000), (184000), (170000), (172000), (174000), (190000), (192000), (194000),
(45000), (55000), (48000), (58000);


insert into item_type_relation(item_id, type_id)
values
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1),
(11, 1), (12, 1), (13, 1), (14, 1), (15, 1), (16, 1), (17, 1), (18, 1), (19, 1), (20, 1),
(21, 1), (22, 1), (23, 1), (24, 1), (25, 1), (26, 1), (27, 1), (28, 1), (29, 1), (30, 1),
(31, 1), (32, 1), (33, 1), (34, 1), (35, 1), (36, 1), (37, 1), (38, 1), (39, 1), (40, 1),
(41, 1), (42, 1), (43, 1), (44, 1), (45, 1), (46, 1), (47, 1), (48, 1), (49, 1), (50, 1),
(51, 1), (52, 1), (53, 1), (54, 1), (55, 1), (56, 1), (57, 1), (58, 1), (59, 1), (60, 1),
(61, 1), (62, 1), (63, 1), (64, 1), (65, 2), (66, 2), (67, 2), (68, 2), (69, 2), (70, 2),
(71, 2), (72, 2), (73, 2), (74, 2), (75, 2), (76, 2), (77, 2), (78, 2), (79, 2), (80, 2),
(81, 2), (82, 2), (83, 2), (84, 2), (85, 2), (86, 2), (87, 2), (88, 2), (89, 3), (90, 3),
(91, 3), (92, 3), (93, 3), (94, 3), (95, 3), (96, 3), (97, 3), (98, 3), (99, 3), (100, 3),
(101, 4), (102, 4), (103, 5), (104, 5);

insert into item_item_type_relation(item_id, item_type_id)
values
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1),
(11, 1), (12, 1), (13, 1), (14, 1), (15, 1), (16, 1), (17, 1), (18, 1), (19, 1), (20, 1),
(21, 1), (22, 1), (23, 1), (24, 1), (25, 1), (26, 1), (27, 1), (28, 1), (29, 1), (30, 1),
(31, 1), (32, 1), (33, 2), (34, 2), (35, 2), (36, 2), (37, 2), (38, 2), (39, 2), (40, 2),
(41, 2), (42, 2), (43, 2), (44, 2), (45, 2), (46, 2), (47, 2), (48, 2), (49, 2), (50, 2),
(51, 2), (52, 2), (53, 2), (54, 2), (55, 2), (56, 2), (57, 2), (58, 2), (59, 2), (60, 2),
(61, 2), (62, 2), (63, 2), (64, 2), (65, 3), (66, 3), (67, 3), (68, 3), (69, 3), (70, 3),
(71, 3), (72, 3), (73, 3), (74, 3), (75, 3), (76, 3), (77, 3), (78, 3), (79, 3), (80, 3),
(81, 3), (82, 3), (83, 3), (84, 3), (85, 3), (86, 3), (87, 3), (88, 3), (89, 4), (90, 4),
(91, 4), (92, 4), (93, 4), (94, 4), (95, 5), (96, 5), (97, 5), (98, 5), (99, 5), (100, 5),
(101, 6), (102, 7), (103, 6), (104, 7);

insert into color_item_relation(item_id, color_id)
values
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1),
(11, 1), (12, 1), (13, 1), (14, 1), (15, 1), (16, 1), (17, 4), (18, 4), (19, 4), (20, 4),
(21, 4), (22, 4), (23, 4), (24, 4), (25, 4), (26, 4), (27, 4), (28, 4), (29, 4), (30, 4),
(31, 4), (32, 4), (33, 1), (34, 1), (35, 1), (36, 1), (37, 1), (38, 1), (39, 1), (40, 1),
(41, 1), (42, 1), (43, 1), (44, 1), (45, 1), (46, 1), (47, 1), (48, 1), (49, 4), (50, 4),
(51, 4), (52, 4), (53, 4), (54, 4), (55, 4), (56, 4), (57, 4), (58, 4), (59, 4), (60, 4),
(61, 4), (62, 4), (63, 4), (64, 4), (65, 1), (66, 1), (67, 1), (68, 1), (69, 1), (70, 1),
(71, 1), (72, 1), (73, 2), (74, 2), (75, 2), (76, 2), (77, 2), (78, 2), (79, 2), (80, 2),
(81, 3), (82, 3), (83, 3), (84, 3), (85, 3), (86, 3), (87, 3), (88, 3);


insert into item_size_relation(item_id, size_id)
values
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 1), (10, 2),
(11, 3), (12, 4), (13, 5), (14, 6), (15, 7), (16, 8), (17, 1), (18, 2), (19, 3), (20, 4),
(21, 5), (22, 6), (23, 7), (24, 8), (25, 1), (26, 2), (27, 3), (28, 4), (29, 5), (30, 6),
(31, 7), (32, 8), (33, 1), (34, 2), (35, 3), (36, 4), (37, 5), (38, 6), (39, 7), (40, 8),
(41, 1), (42, 2), (43, 3), (44, 4), (45, 5), (46, 6), (47, 7), (48, 8), (49, 1), (50, 2),
(51, 3), (52, 4), (53, 5), (54, 6), (55, 7), (56, 8), (57, 1), (58, 2), (59, 3), (60, 4),
(61, 5), (62, 6), (63, 7), (64, 8), (65, 1), (66, 2), (67, 3), (68, 4), (69, 5), (70, 6),
(71, 7), (72, 8), (73, 1), (74, 2), (75, 3), (76, 4), (77, 5), (78, 6), (79, 7), (80, 8),
(81, 1), (82, 2), (83, 3), (84, 4), (85, 5), (86, 6), (87, 7), (88, 8), (89, 3), (90, 4),
(91, 5), (92, 3), (93, 4), (94, 5), (95, 3), (96, 4), (97, 5), (98, 3), (99, 4), (100, 5);


insert into item_picture_size_relation(item_id, picture_size_id) VALUES
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 2), (10, 2),
(11, 2), (12, 2), (13, 2), (14, 2), (15, 2), (16, 2), (17, 1), (18, 1), (19, 1), (20, 1),
(21, 1), (22, 1), (23, 1), (24, 1), (25, 2), (26, 2), (27, 2), (28, 2), (29, 2), (30, 2),
(31, 2), (32, 2), (33, 1), (34, 1), (35, 1), (36, 1), (37, 1), (38, 1), (39, 1), (40, 1),
(41, 2), (42, 2), (43, 2), (44, 2), (45, 2), (46, 2), (47, 2), (48, 2), (49, 1), (50, 1),
(51, 1), (52, 1), (53, 1), (54, 1), (55, 1), (56, 1), (57, 2), (58, 2), (59, 2), (60, 2),
(61, 2), (62, 2), (63, 2), (64, 2),  (89, 1), (90, 1),
(91, 1), (92, 2), (93, 2), (94, 2), (95, 1), (96, 1), (97, 1), (98, 2), (99, 2), (100, 2);