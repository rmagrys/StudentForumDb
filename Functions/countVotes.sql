
drop function if exists `db`.`countVotes`;

SET GLOBAL log_bin_trust_function_creators = 1;

delimiter $$
CREATE FUNCTION `db`.`countVotes` (
	commentId int,
    voteType BIT(1)
    )
RETURNS INTEGER
BEGIN
	
    declare votesCount INT;
    
    select count(*) into votesCount from db.vote where vote.rate = voteType and vote.CommentId = commentId;
    	
RETURN votesCount;
END $$