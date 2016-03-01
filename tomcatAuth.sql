#Ref: https://tomcat.apache.org/tomcat-3.3-doc/JDBCRealm-howto.html
CREATE DATABASE  IF NOT EXISTS `dbrealm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbrealm`;

create table users
(
  user_name varchar(15) not null primary key,
  user_pass varchar(15) not null
);

create table roles
(
  role_name varchar(15) not null primary key
);

create table user_roles
(
  user_name varchar(15) not null,
  role_name varchar(15) not null,
  primary key( user_name, role_name )
);

#Populate tables with user data	
INSERT INTO `dbrealm`.`roles`
(`role_name`)
VALUES
('admin');

INSERT INTO `dbrealm`.`users`
(`user_name`,
`user_pass`)
VALUES
('tomcat',
'password');

INSERT INTO `dbrealm`.`user_roles`
(`user_name`,
`role_name`)
VALUES
('tomcat',
'admin');


