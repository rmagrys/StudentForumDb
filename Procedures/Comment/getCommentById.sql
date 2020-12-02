
drop procedure if exists `db`.`getCommentById`;
delimiter $$


CREATE PROCEDURE `db`.`getCommentById`(
	givenId INT
)
BEGIN

	select idComment,content, creationDate, PostId, CommentatorId 
    from category where idComment = givenId ;

END $$