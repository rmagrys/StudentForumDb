
drop procedure if exists `db`.`addVoteToComment`;
delimiter $$

CREATE PROCEDURE `db`.`addVoteToCommentt`(
  givenCommentId INT,
  givenVoterId INT,
  givenRate BIT(1)
)
BEGIN
	
    IF EXISTS ( select * from db.user where db.user.idUser = givenVoterId ) then
		if exists ( select * from db.comment where db.comment.idComment = givenCommentId ) then
			
			insert into db.votet(rate, VoterId, CommentId)
            value
			(givenRate,givenVoterId,givenCommentId);
            
		END IF;
     END IF;
    
END $$