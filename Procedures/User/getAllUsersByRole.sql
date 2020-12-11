drop procedure if exists `db`.`getAllUsersByRole`;

delimiter $$

CREATE PROCEDURE `db`.`getAllUsersByRole`(
	givenRole varchar(20)
)
BEGIN

	select db.user.idUser, db.user.name, db.user.lastName,db.user.email,db.user.creationDate, db.role.name 
	from db.user 
	join db.role
	on db.user.RoleId = db.role.idRole
	where RoleId = (select idRole from db.Role where db.Role.name = givenRole) and enabled = 1
	order by db.user.creationDate desc;

END $$