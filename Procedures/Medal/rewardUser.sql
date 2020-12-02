
drop procedure if exists `db`.`rewardUser`;
delimiter $$

CREATE PROCEDURE `db`.`rewardUser`(
  givenRewardingUserId INT,
  givenMedalId INT,
  givenContent VARCHAR(100),
  givenPosterId INT
)
BEGIN
	
    IF EXISTS ( select * from db.user where db.user.idUser = givenPosterId ) then
		IF EXISTS ( select * from db.user where db.user.idUser = givenRewardingUserId ) then
			IF EXISTS ( select * from db.medal where db.medal.idMedal = givenMedalId ) then
				insert into db.reward(RewardingUserId, MedalId, content, crationDate, PosterId)
                value
                (givenRewardingUserId, givenMedalId, givenContent, curdate(), givenPosterId);
			END IF;
		END IF;
    END IF;
    
END $$