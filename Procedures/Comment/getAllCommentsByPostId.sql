drop procedure if exists `db`.`getAllCommentsByPostId`;
delimiter $$


CREATE PROCEDURE `db`.`getAllCommentsByPostId`(
	postId INT
)
BEGIN

	select idComment,content, creationDate, PostId, CommentatorId
    from comment 
    where enabled = true and PostId = postId and ComToComId is null;

END $$