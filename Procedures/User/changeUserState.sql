
drop procedure if exists `db`.`changeUserState`;

delimiter $$

CREATE PROCEDURE `db`.`changeUserState`(
    dataId INT,
    enabledValue BIT(1)
	)
BEGIN
	
    if exists (select * from db.user where idUser = dataId) then
		UPDATE user
		SET enabled = enabledValue
		WHERE idUser = dataId;
    end if;
    
END $$