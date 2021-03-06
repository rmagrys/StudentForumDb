insert into db.user (name, lastName, email, password, creationDate, enabled, RoleId)
values 
('Rafal','Magrys', 'r.magrys@wp.pl', sha1('haslo'), STR_TO_DATE('01/05/2010', '%m/%d/%Y'), true, (SELECT idRole from db.role where name ='USER')),
("Marzanna", "Ostrowski", "marzanna.ostrowski@158843.pl", sha1('haslo') , STR_TO_DATE('07/14/2005', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='ADMIN')),
("Czesław", "Zieliński", "czesław.zieliński@158843.pl", sha1('haslo') , STR_TO_DATE('04/14/2012', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='ADMIN')),
("Adela", "Socha", "adela.socha@158843.pl", sha1('haslo') , STR_TO_DATE('06/15/2018', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='ADMIN')),
("Alina", "Pawłowski", "alina.pawłowski@158843.pl", sha1('haslo') , STR_TO_DATE('07/25/2004', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='ADMIN')),
("Bogumił", "Janicki", "bogumił.janicki@158843.pl", sha1('haslo') , STR_TO_DATE('10/04/2019', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='ADMIN')),
("Matylda", "Romanowski", "matylda.romanowski@158843.pl", sha1('haslo') , STR_TO_DATE('12/01/2007', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='MODERATOR')),
("Karolina", "Domagała", "karolina.domagała@158843.pl", sha1('haslo') , STR_TO_DATE('05/03/2018', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='MODERATOR')),
("Mateusz", "Kowalski", "mateusz.kowalski@158843.pl", sha1('haslo') , STR_TO_DATE('09/06/2020', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='MODERATOR')),
("Franciszka", "Michalik", "franciszka.michalik@158843.pl", sha1('haslo') , STR_TO_DATE('05/27/2015', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='MODERATOR')),
("Olga", "Urbaniak", "olga.urbaniak@158843.pl", sha1('haslo') , STR_TO_DATE('08/03/2019', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='MODERATOR')),
("Ferdynand", "Murawski", "ferdynand.murawski@158843.pl", sha1('haslo') , STR_TO_DATE('07/18/2006', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='MODERATOR')),
("Emanuel", "Witkowski", "emanuel.witkowski@158843.pl", sha1('haslo') , STR_TO_DATE('05/15/2006', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='MODERATOR')),
("Aleksy", "Jasiński", "aleksy.jasiński@158843.pl", sha1('haslo') , STR_TO_DATE('12/17/2008', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='MODERATOR')),
("Stefania", "Orzechowski", "stefania.orzechowski@158843.pl", sha1('haslo') , STR_TO_DATE('11/07/2018', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='MODERATOR')),
("Remigiusz", "Kulesza", "remigiusz.kulesza@158843.pl", sha1('haslo') , STR_TO_DATE('07/16/2000', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='MODERATOR')),
("Sylwester", "Sroka", "sylwester.sroka@158843.pl", sha1('haslo') , STR_TO_DATE('07/11/2018', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Bogusława", "Szczepaniak", "bogusława.szczepaniak@158843.pl", sha1('haslo') , STR_TO_DATE('04/27/2015', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Lech", "Sroka", "lech.sroka@158843.pl", sha1('haslo') , STR_TO_DATE('06/14/2018', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Berenika", "Wojciechowski", "berenika.wojciechowski@158843.pl", sha1('haslo') , STR_TO_DATE('07/22/2010', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Pamela", "Wierzbicki", "pamela.wierzbicki@158843.pl", sha1('haslo') , STR_TO_DATE('11/18/2017', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Robert", "Andrzejewski", "robert.andrzejewski@158843.pl", sha1('haslo') , STR_TO_DATE('04/06/2007', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Sara", "Krajewski", "sara.krajewski@158843.pl", sha1('haslo') , STR_TO_DATE('02/16/2006', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Wiktor", "Kaczmarczyk", "wiktor.kaczmarczyk@158843.pl", sha1('haslo') , STR_TO_DATE('10/13/2002', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Gerard", "Kwiatkowski", "gerard.kwiatkowski@158843.pl", sha1('haslo') , STR_TO_DATE('06/24/2017', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Borys", "Markowski", "borys.markowski@158843.pl", sha1('haslo') , STR_TO_DATE('07/06/2011', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Marzena", "Stefański", "marzena.stefański@158843.pl", sha1('haslo') , STR_TO_DATE('12/27/2008', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Edyta", "Olejnik", "edyta.olejnik@158843.pl", sha1('haslo') , STR_TO_DATE('07/14/2017', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Radosław", "Pająk", "radosław.pająk@158843.pl", sha1('haslo') , STR_TO_DATE('10/06/2004', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Marzena", "Lewandowski", "marzena.lewandowski@158843.pl", sha1('haslo') , STR_TO_DATE('11/01/2011', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Przemysław", "Olejnik", "przemysław.olejnik@158843.pl", sha1('haslo') , STR_TO_DATE('10/30/2006', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Nadia", "Brzeziński", "nadia.brzeziński@158843.pl", sha1('haslo') , STR_TO_DATE('09/14/2015', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Natasza", "Kopeć", "natasza.kopeć@158843.pl", sha1('haslo') , STR_TO_DATE('09/22/2009', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Lucyna", "Makowski", "lucyna.makowski@158843.pl", sha1('haslo') , STR_TO_DATE('12/28/2015', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Bogumił", "Kubicki", "bogumił.kubicki@158843.pl", sha1('haslo') , STR_TO_DATE('04/12/2001', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Józef", "Andrzejewski", "józef.andrzejewski@158843.pl", sha1('haslo') , STR_TO_DATE('11/14/2020', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Liliana", "Wróbel", "liliana.wróbel@158843.pl", sha1('haslo') , STR_TO_DATE('09/08/2007', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Joanna", "Staniszewski", "joanna.staniszewski@158843.pl", sha1('haslo') , STR_TO_DATE('05/28/2003', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Oliwia", "Szewczyk", "oliwia.szewczyk@158843.pl", sha1('haslo') , STR_TO_DATE('06/18/2019', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Hilary", "Kołodziejczyk", "hilary.kołodziejczyk@158843.pl", sha1('haslo') , STR_TO_DATE('10/08/2012', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Norbert", "Jakubowski", "norbert.jakubowski@158843.pl", sha1('haslo') , STR_TO_DATE('10/25/2017', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Krystian", "Marcinkowski", "krystian.marcinkowski@158843.pl", sha1('haslo') , STR_TO_DATE('01/09/2006', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Marzanna", "Zięba", "marzanna.zięba@158843.pl", sha1('haslo') , STR_TO_DATE('06/07/2011', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Ireneusz", "Tomczyk", "ireneusz.tomczyk@158843.pl", sha1('haslo') , STR_TO_DATE('12/23/2013', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Dominik", "Grabowski", "dominik.grabowski@158843.pl", sha1('haslo') , STR_TO_DATE('10/17/2004', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER')),
("Marlena", "Marek", "marlena.marek@158843.pl", sha1('haslo') , STR_TO_DATE('09/18/2008', '%m/%d/%Y') , true , (SELECT idRole from db.role where name ='USER'));