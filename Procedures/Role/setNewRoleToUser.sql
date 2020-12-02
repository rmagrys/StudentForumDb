drop procedure if exists `db`.`setNewRoleToUser`;

delimiter $$

CREATE PROCEDURE `db`.`setNewRoleToUser`(
    givenUserId INT,
    givenRole varchar(100)
	)
BEGIN
	
    declare newRoleId INT;
    select idRole into newRoleId from role where role.name = givenRole;
    if exists(select * from user where idUser = givenUserId) then
		if (idRole) is not null then
			UPDATE user
			SET RoleId = newRoleId
			WHERE idUser = idUserToChangePassword;
		end if;
    end if;
END