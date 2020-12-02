drop procedure if exists `db`.`updateCategory`;

delimiter $$

CREATE PROCEDURE `db`.`updateCategory`(
    categoryId INT,
    givenName varchar(50),
    givenContent varchar(100)
	)
BEGIN
	
    
    if exists (select * from db.category where idCategory = categoryId) then
		if (NULLIF(givenName, '')) is not null then
			UPDATE category
			SET name = givenName
			WHERE idCategory = categoryId;	
		end if;
        
        if (NULLIF(givenContent, '')) is not null then
			UPDATE category
			SET content = givenContent
			WHERE idCategory = categoryId;	
		end if;
        
    end if;
    
END $$