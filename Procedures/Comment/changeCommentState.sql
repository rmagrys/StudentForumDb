
drop procedure if exists `db`.`changeCommentState`;

delimiter $$

CREATE PROCEDURE `db`.`changeCommentState`(
    dataId INT,
    enabledValue BIT(1)
	)
BEGIN
	
    if exists (select * from db.comment where idComment = dataId) then
		UPDATE comment
		SET enabled = enabledValue
		WHERE idComment = dataId;
    end if;
    
END $$