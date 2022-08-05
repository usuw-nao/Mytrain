create database mytrains_db
character set utf8mb4
collate utf8mb4_general_ci;

use mytrains_db;

create table adult (
id int primary key auto_increment,
login_id varchar(30) unique key not null,
login_pass varchar(255)  not null,
nick_name varchar(30) not null,
type_id int not null,
email varchar(60)  unique key not null,
point int ,
name varchar(30) not null,
address varchar(255) not null,
age int not null,
ivent int,
distance varchar(255),
start_date date ,
end_date date
);

INSERT INTO adult VALUES
(1, 'sapporo',
 '$2a$08$agTSm068nTYmqcAaaT/WqOs0nvM0y5S9lUPmApWlL1AeZkHRtw6iy', 
 'さっぽろ',1,'sapporo@example.com',10,'北海道札幌','北海道札幌函館利尻',
 50,2,'函館から札幌経由稚内経由利尻',20220801,20221031
 );

 //イベントテーブル作成
 create table ivent (
id int primary key auto_increment,
name varchar(30) not null,
detail varchar(255)  not null,
place varchar(60) not null,
day date not null
);