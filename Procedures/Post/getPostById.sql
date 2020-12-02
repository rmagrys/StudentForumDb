
drop procedure if exists `db`.`getPostById`;
delimiter $$


CREATE PROCEDURE `db`.`getPostById`(
	postId INT
)
BEGIN

	select idPost, name, content, creationDate, CategoryId, PosterId
    from post where idPost = postId ;

END $$