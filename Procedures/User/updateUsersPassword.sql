
drop procedure if exists `db`.`updateUsersPassword`;

delimiter $$

CREATE PROCEDURE `db`.`updateUsersPassword`(
    givenEmail varchar(100),
    givenNewPassword varchar(100)
	)
BEGIN
	
    declare idUserToChangePassword INT;
    select idUser into idUserToChangePassword from user where user.email = givenEmail;
    
    if (idUserToChangePassword) is not null then
		UPDATE user
		SET password = md5(givenNewPassword)
		WHERE idUser = idUserToChangePassword;
    end if;
    
END