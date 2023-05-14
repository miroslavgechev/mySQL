alter table users
change column last_login_time
last_login_time timestamp default now();

-- alter table users
-- modify column last_login_time
-- timestamp default NOW();