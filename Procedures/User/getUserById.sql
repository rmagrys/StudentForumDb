
drop procedure if exists `db`.`getUserById`;
delimiter $$


CREATE PROCEDURE `db`.`getUserById`(
	givenId INT
)
BEGIN

	select db.user.idUser, db.user.name, db.user.lastName,db.user.email,db.user.creationDate from user where idUser = givenId;

END $$