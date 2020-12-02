
drop procedure if exists  `db`.`createPost`;

DELIMITER $$

CREATE PROCEDURE `db`.`createPost` (
  givenName VARCHAR(45) ,
  givenContent VARCHAR(500) ,
  givenCategoryName VARCHAR(45),
  givenPosterMail VARCHAR(45) 
)
BEGIN

	declare userId int;
    declare categoryId int;
    
    select idCategory INTO categoryId from category where category.name = givenCategoryName;
    select idUser into userId from user where user.email = givenPosterMail;
    
    if (userId and categoryId) is not null  then
		insert into post(name, content, enabled, creationDate, CategoryId, PosterId) value
        (givenName, givenContent, true, curdate(), categoryId, userId);
	end if;
		
END $$
