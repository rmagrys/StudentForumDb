drop procedure if exists `db`.`countVotesByCommentId`;
delimiter $$


CREATE PROCEDURE `db`.`countVotesByCommentId`(
	commentId INT
)
BEGIN

	declare upvotes INT;
    declare downvotes INT;
    declare votes INT;
    
    select count(*) into upvotes from db.vote where vote.rate = 1 and vote.CommentId = commentId;
	select count(*) into downvotes from db.vote where vote.rate = 0 and vote.CommentId = commentId;
    
    set votes = upvotes - downvotes;
    
    select commentId, votes;

END $$