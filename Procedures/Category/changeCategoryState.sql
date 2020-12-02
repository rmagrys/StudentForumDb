
drop procedure if exists `db`.`changeCategoryState`;

delimiter $$

CREATE PROCEDURE `db`.`changeCategoryState`(
    dataId INT,
    enabledValue BIT(1)
	)
BEGIN
	
    if exists (select * from db.category where idCategory = dataId) then
		UPDATE category
		SET enabled = enabledValue
		WHERE idCategory = dataId;
    end if;
    
END $$