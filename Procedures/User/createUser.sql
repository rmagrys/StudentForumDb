drop procedure if exists `db`.`create user`;
delimiter $$

CREATE PROCEDURE `db`.`create user`(
  givenName VARCHAR(15),
  givenLastName VARCHAR(25),
  givenEmail VARCHAR(80),
  givenPassword VARCHAR(100),
  givenRole VARCHAR(20)
)
BEGIN
	
    IF NOT EXISTS ( select email from db.user where db.user.email = givenEmail ) then
		insert into db.user(name, lastname, email, password, creationDate, enabled, roleId) value
        (givenName, givenLastName, givenEmail, MD5(givenPassword), curdate(), true, (SELECT idRole from db.role where name = givenRole));
    END IF;
    
END $$