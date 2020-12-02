drop procedure if exists `db`.`getAllTagsByPostId`;
delimiter $$


CREATE PROCEDURE `db`.`getAllTagsByPostId`(
	postId INT
)
BEGIN

	select taggedPost.PostId, tag.name
    from db.taggedPost 
    join db.tag
    on taggedPost.TagId = tag.idTag
    where taggedPost.PostId = postId; 
    

END $$