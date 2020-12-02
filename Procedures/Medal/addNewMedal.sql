
drop procedure if exists `db`.`addNewMedal`;
delimiter $$

CREATE PROCEDURE `db`.`addNewMedal`(
  givenName VARCHAR(100)
)
BEGIN
	
    IF not EXISTS ( select * from db.user where db.user.name = givenName ) then
		insert into db.medal(name)
        value
        (givenName);	
	END IF;
    
END $$