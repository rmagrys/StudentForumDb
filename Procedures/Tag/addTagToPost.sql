

drop procedure if exists `db`.`addTagToPost`;
delimiter $$

CREATE PROCEDURE `db`.`addTagToPost`(
  givenName VARCHAR(700),
  givenPostId INT
)
BEGIN
	
		if exists ( select * from db.post where db.post.idPost = givenPostId ) then
        
			if not exists ( select * from db.tag where db.tag.name = givenName) then
				insert into tag(name)
				value (givenName);
            END IF;

			insert into db.taggedPost(TagId, PostId,enabled) value
			((select idTag from db.tag where tag.name = givenName), givenPostId , true);
			
		END IF;
  
END $$