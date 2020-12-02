

drop procedure if exists `db`.`createComment`;
delimiter $$

CREATE PROCEDURE `db`.`createComment`(
  givenContent VARCHAR(700),
  givenPostId INT,
  givenComentatorId INT,
  givenPrecedentCommentId INT
)
BEGIN
	
    IF EXISTS ( select * from db.user where db.user.idUser = givenComentatorId ) then
		if exists ( select * from db.post where db.post.idPost = givenPostId ) then
			if exists ( select * from comment where comment.idComment =  givenPrecedentCommentId ) then
				insert into db.comment(content, enabled, creationDate, PostId, CommentatorId, ComToComId)
                value
				(givenContent, true, curdate(), givenPostId , givenComentatorId, givenPrecedentCommentId);
			else
				insert into db.comment(content, enabled, creationDate, PostId, CommentatorId, ComToComId) 
                value
				(givenContent, true, curdate(), givenPostId , givenComentatorId, NULL);
			END IF;
		END IF;
     END IF;
    
END $$