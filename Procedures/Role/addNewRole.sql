
drop procedure if exists `db`.`addNewRole`;

delimiter $$

CREATE PROCEDURE `db`.`addNewRole`(
    givenRole varchar(50)
	)
BEGIN
	
    if exists (select * from db.role where name = givenName) then
		insert into db.role(name)
        value (givenRole);
    end if;
    
END $$