
drop procedure if exists `db`.`getCategoryById`;
delimiter $$


CREATE PROCEDURE `db`.`getCategoryById`(
	givenId INT
)
BEGIN

	select category.idCategory, category.name, category.content, category.creationDate from category where idCategory = givenId;

END $$