ALTER  DATABASE flowershop DEFAULT CHARACTER SET utf8 ;

CREATE TABLE USER(
userID varchar(20),
userPassword varchar(20),
userName varchar(20),
userEmail varchar(30),
PRIMARY KEY(userID)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
select * from USER;
delete from user;