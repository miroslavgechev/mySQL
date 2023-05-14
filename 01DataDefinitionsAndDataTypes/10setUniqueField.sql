alter table users
drop primary key,
add constraint pk_users
primary key users(id);

alter table users
change column username
username varchar(30) unique not null;