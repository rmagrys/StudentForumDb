drop procedure if exists `db`.`getAllSubCommentsByComId`;
delimiter $$


CREATE PROCEDURE `db`.`getAllSubCommentsByComId`(
	commentId INT
)
BEGIN

	select idComment,content, creationDate, PostId, CommentatorId
    from comment 
    where enabled = true and ComToComId = commentId;

END $$