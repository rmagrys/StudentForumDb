
drop procedure if exists `db`.`changePostState`;

delimiter $$

CREATE PROCEDURE `db`.`changePostState`(
    dataId INT,
    enabledValue BIT(1)
	)
BEGIN
	
    if exists (select * from db.category where idCategory = dataId) then
		UPDATE post
		SET enabled = enabledValue
		WHERE idPost = dataId;
    end if;
    
END $$