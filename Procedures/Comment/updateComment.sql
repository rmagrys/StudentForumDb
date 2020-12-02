drop procedure if exists `db`.`updateComment`;

delimiter $$

CREATE PROCEDURE `db`.`updateComment`(
    commentId INT,
    givenContent varchar(500)
	)
BEGIN
	
    
    if exists (select * from db.comment where idComment = commentId ) then
	
			if (NULLIF(givenContent, '')) is not null then
				 UPDATE comment
				 SET content = givenContent
				 WHERE idComment = CommentId;		
			
		end if;
	end if;
END $$