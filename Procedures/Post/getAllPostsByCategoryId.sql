
drop procedure if exists `db`.`getAllPostsByCategoryId`;
delimiter $$


CREATE PROCEDURE `db`.`getAllPostsByCategoryId`(
	categoryId INT
)
BEGIN

	select idPost, name, content, creationDate, CategoryId, PosterId
    from post 
    where enabled = true and CategoryId = categoryId;

END $$