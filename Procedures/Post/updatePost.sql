drop procedure if exists `db`.`updatePost`;

delimiter $$

CREATE PROCEDURE `db`.`updatePost`(
    postId INT,
    givenName varchar(50),
    givenContent varchar(500),
    categoryId INT
	)
BEGIN
	
    
    if exists (select * from db.post where idPost = postId ) then
		if exists (select * from db.category where idCategory = categoryId ) then
            UPDATE post
			SET CategoryId = categoryId
			WHERE idPost = postId;	
		 end if;
            
			if (NULLIF(givenName, '')) is not null then
				 UPDATE post
				 SET name = givenName
				 WHERE idPost = postId;		
			end if;
        
			if (NULLIF(givenContent, '')) is not null then
				 UPDATE post
				 SET content = givenContent
				 WHERE idPost = postId;		
			
		end if;
	end if;
END $$