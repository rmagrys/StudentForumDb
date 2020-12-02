drop procedure if exists `db`.`createCategory`;

delimiter $$

CREATE PROCEDURE `db`.`createCategory`(
    newCategoryName varchar(50),
    newCategoryContent varchar(100)
	)
BEGIN
	
    if not exists (select * from db.category where name = newCategoryName) then
		insert into db.category(name,content,enabled,creationDate)
        values
        (newCategoryName,newCategoryContent,true, curdate());
    end if;
    
END $$