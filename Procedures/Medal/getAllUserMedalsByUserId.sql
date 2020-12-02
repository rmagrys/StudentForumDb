drop procedure if exists `db`.`getAllUserMedalsByUserId`;
delimiter $$


CREATE PROCEDURE `db`.`getAllUserMedalsByUserId`(
	userId INT
)
BEGIN

	select db.user.email, db.medal.name, db.reward.content, db.reward.creationDate
    from db.reward 
    join db.medal
    on db.reward.MedalId = medal.idMedal
    join db.user
    on db.reward.RewardingUserId = user.idUser
    where PosterId = userId;

END $$