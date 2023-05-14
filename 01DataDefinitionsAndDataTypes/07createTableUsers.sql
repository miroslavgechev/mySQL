create table users (
id int primary key auto_increment,
username varchar(30) unique not null,
password varchar(26) not null,
profile_picture blob,
last_login_time timestamp,
is_deleted boolean
);

insert into users (username, password) 
values ('user1', 'password1'), 
('user2', 'password2'),
('user3', 'password3'),
('user4', 'password4'),
('user5', 'password5');
