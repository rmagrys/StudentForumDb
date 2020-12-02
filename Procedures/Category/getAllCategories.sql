
drop procedure if exists `db`.`getAllCategories`;
delimiter $$


CREATE PROCEDURE `db`.`getAllCategories`()
BEGIN

	select category.idCategory, category.name, category.content, category.creationDate from category where enabled = true ;

END $$