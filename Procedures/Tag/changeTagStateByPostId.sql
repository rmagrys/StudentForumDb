
drop procedure if exists `db`.`changeTagStateByPostId`;

delimiter $$

CREATE PROCEDURE `db`.`changeCategoryState`(
    postId INT,
    tagId INT,
    enabledValue BIT(1)
	)
BEGIN
	
    declare taggedPostId INT;
    
    select idTaggedPost into taggedPostId from db.taggedPost where taggedPost.TagId = tagId and taggedPost.postId = postId;
    
    
    if (taggedPostId) is not null then
		UPDATE taggedPost
		SET enabled = enabledValue
		WHERE idtaggedPost = taggedPostId;
    end if;
    
END $$