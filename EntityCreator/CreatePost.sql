insert into db.post (name, content, enabled, creationDate, CategoryId, PosterId) values
('test1', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit.', true, curdate(), (select idCategory from db.category where db.category.name = 'Projekty') , 14 );

insert into db.post(name, content, enabled, creationDate, CategoryId, PosterId) values (" quae aliquid inventore,", " repellendus officiis quod est sit praesentium Lorem, distinctio soluta ipsum repudiandae, repudiandae, animi obcaecati quae", true , STR_TO_DATE('08/20/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Rozmowy'), 20),(" consequuntur elit. amet", " Ad facilis voluptatibus, dolore consectetur Suscipit dolor inventore, aspernatur repellendus facilis ipsum aliquid provident minima!", true , STR_TO_DATE('03/20/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Korepetycje'), 11),(" quisquam distinctio amet", " dignissimos Dolores sed quibusdam modi dolor minima! ea maiores Ad dicta dignissimos nobis qui aliquid", true , STR_TO_DATE('11/21/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Korepetycje'), 20),(" sit vitae provident", " ea inventore, non natus dolore natus Ad quisquam tempore neque explicabo quae sit dolorem ipsam", true , STR_TO_DATE('09/10/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Projekty'), 23),(" neque non aspernatur", " aspernatur quibusdam provident tempore Ad dolor natus modi consectetur delectus, dolor qui Dolores quisquam inventore,", true , STR_TO_DATE('12/05/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Projekty'), 22),(" quisquam modi animi", " reprehenderit adipisicing quod vitae amet ipsam natus deserunt eos consectetur labore ad Lorem, est elit.", true , STR_TO_DATE('11/04/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Uczelnia'), 28),(" fugit consectetur ex", " commodi dicta sit minima! eos praesentium esse explicabo amet aperiam distinctio adipisicing quae dignissimos consectetur", true , STR_TO_DATE('09/18/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Uczelnia'), 18),(" elit. Dolores repudiandae,", " ex aspernatur voluptatibus, ipsum vitae ad dolorem repellendus dolore reprehenderit omnis Lorem, consectetur adipisicing maiores", true , STR_TO_DATE('08/04/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Uczelnia'), 30),(" consectetur repudiandae, dolorum,", " sit tempore ipsum fugit doloremque facilis aperiam distinctio amet Dolores repudiandae, amet cumque consectetur amet", true , STR_TO_DATE('05/21/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Sprawozdania'), 23),(" illo tempore non", " distinctio delectus, soluta distinctio reprehenderit laboriosam inventore, reprehenderit animi illo libero? facere illum. voluptates. reprehenderit", true , STR_TO_DATE('12/13/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Uczelnia'), 20),(" consequuntur facilis ea", " sed natus consectetur dolorum, est quisquam quibusdam dolorem consequuntur dolorum, quae labore distinctio elit. maiores", true , STR_TO_DATE('10/05/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Projekty'), 29),(" labore eos doloremque", " dignissimos provident repellendus eos est adipisicing Suscipit obcaecati natus ipsam provident dolore facere dolor non", true , STR_TO_DATE('07/13/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Rozmowy'), 27),(" quibusdam sit aliquid", " dolor aliquid libero? distinctio eos animi eos amet eos dolore dicta dolor ad labore elit.", true , STR_TO_DATE('11/05/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Uczelnia'), 2),(" adipisicing cumque cumque", " ipsum dolorum, consectetur doloremque deserunt fugit exercitationem dolor adipisicing Quia?Magni deserunt ea obcaecati illum. ipsum", true , STR_TO_DATE('11/26/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Projekty'), 28),(" doloremque praesentium repellendus", " dolor voluptatibus, deserunt minima! repellendus laboriosam omnis provident quod soluta elit. modi voluptates. adipisicing sit", true , STR_TO_DATE('11/25/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Sprawozdania'), 21),(" illo Lorem, commodi", " nobis vitae elit. elit. Ad cumque voluptatibus, Lorem, ipsum aliquid nobis facere facilis dolore dolorem", true , STR_TO_DATE('02/10/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Rozmowy'), 19),(" neque dolor sit", " adipisicing vitae dolorum, consequuntur ex natus ipsam ipsum dolor ipsam Suscipit amet minima! ipsum repudiandae,", true , STR_TO_DATE('10/05/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Sprawozdania'), 22),(" omnis voluptates. illum.", " ad amet dolor dicta Suscipit aliquid maiores esse consequuntur tempore animi sit dolor sed ea", true , STR_TO_DATE('11/16/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Rozmowy'), 24),(" maiores repudiandae, qui", " dignissimos provident aperiam aliquid amet cumque repellendus ipsum Lorem, non placeat soluta modi dignissimos quibusdam", true , STR_TO_DATE('11/10/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Uczelnia'), 6),(" vitae neque quae", " quisquam quod doloremque illum. aliquid doloremque facere consectetur Suscipit praesentium dolor officiis ipsum vitae laboriosam", true , STR_TO_DATE('08/01/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Projekty'), 20),(" est repudiandae, obcaecati", " omnis modi expedita fugit esse Suscipit animi ipsum Ad reprehenderit ipsum praesentium amet voluptatibus, reprehenderit", true , STR_TO_DATE('10/25/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Sprawozdania'), 26),(" Dolores ad elit.", " voluptates. explicabo ea sit ipsum eos elit. aperiam natus modi Suscipit Lorem, natus eos reprehenderit", true , STR_TO_DATE('08/08/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Uczelnia'), 17),(" quibusdam quibusdam sit", " adipisicing sit sit voluptatibus, maiores quod amet facilis ipsum aspernatur illo voluptates. elit. repellendus illum.", true , STR_TO_DATE('12/26/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Projekty'), 21),(" reprehenderit ad fugit", " dolor fugit aliquid tempore qui amet doloremque repellendus aspernatur explicabo dolor dicta dolor quibusdam dignissimos", true , STR_TO_DATE('06/25/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Uczelnia'), 13),(" adipisicing facilis aliquid", " Ad voluptates. dolore illum. aperiam elit. esse distinctio quod repellendus dolore maiores doloremque ipsam labore", true , STR_TO_DATE('06/02/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Korepetycje'), 21),(" doloremque dolor ipsum", " commodi labore amet provident libero? illum. soluta qui ad ipsam laboriosam doloremque praesentium dolor aliquid", true , STR_TO_DATE('06/21/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Rozmowy'), 30),(" deserunt fugit omnis", " illum. natus consectetur eos ea sit quae est deserunt soluta quibusdam maiores consectetur aliquid facere", true , STR_TO_DATE('06/04/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Korepetycje'), 27),(" eos illo vitae", " doloremque explicabo amet dolor officiis nobis dicta adipisicing quibusdam dolor ipsam expedita Dolores Dolores voluptates.", true , STR_TO_DATE('12/28/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Sprawozdania'), 11),(" amet dolor doloremque", " reprehenderit doloremque neque omnis delectus, reprehenderit dolorum, laboriosam amet inventore, ea fugit fugit explicabo dignissimos", true , STR_TO_DATE('11/25/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Rozmowy'), 11),(" praesentium amet animi", " non praesentium doloremque dolore dolor maiores doloremque illum. quod quisquam Suscipit commodi amet provident aspernatur", true , STR_TO_DATE('02/23/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Uczelnia'), 1),(" delectus, aperiam sit", " quisquam natus Quia?Magni illum. maiores vitae modi aliquid nobis Suscipit vitae omnis Lorem, Lorem, distinctio", true , STR_TO_DATE('03/10/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Uczelnia'), 5),(" praesentium ea natus", " Dolores amet illum. esse obcaecati deserunt repellendus aliquid Ad nobis elit. explicabo dignissimos elit. reprehenderit", true , STR_TO_DATE('01/10/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Projekty'), 15),(" dolor ipsum doloremque", " quod omnis voluptatibus, vitae minima! Lorem, ex dicta expedita repudiandae, amet minima! consectetur quisquam dolore", true , STR_TO_DATE('08/11/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Korepetycje'), 18),(" eos Lorem, praesentium", " doloremque neque esse sit commodi sed dolor omnis elit. repudiandae, sed omnis ex minima! dolorum,", true , STR_TO_DATE('10/26/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Sprawozdania'), 25),(" consectetur dicta aliquid", " expedita sit doloremque delectus, reprehenderit libero? sit quae ea Ad explicabo sit maiores adipisicing quae", true , STR_TO_DATE('09/30/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Projekty'), 14),(" fugit commodi dicta", " quibusdam amet quod libero? animi quae ipsum ad obcaecati labore aliquid natus sit doloremque reprehenderit", true , STR_TO_DATE('10/23/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Korepetycje'), 2),(" quisquam Lorem, qui", " quibusdam provident ex reprehenderit fugit ea amet elit. consectetur illo placeat ipsum exercitationem soluta Ad", true , STR_TO_DATE('07/28/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Korepetycje'), 16),(" delectus, esse Lorem,", " dolorum, nobis neque dolore quibusdam ipsam esse dignissimos vitae praesentium distinctio Dolores sit dolorum, Dolores", true , STR_TO_DATE('08/27/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Sprawozdania'), 3),(" vitae consectetur doloremque", " omnis quae non illum. dolor reprehenderit reprehenderit ipsam consequuntur Lorem, amet facere repellendus distinctio animi", true , STR_TO_DATE('02/03/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Projekty'), 27),(" aliquid praesentium amet", " dolorem illum. ipsam deserunt cumque Ad ad Quia?Magni delectus, Lorem, exercitationem dolor laboriosam facilis ipsum", true , STR_TO_DATE('04/20/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Korepetycje'), 27),(" amet explicabo dignissimos", " neque natus quod ex reprehenderit Lorem, exercitationem non obcaecati reprehenderit animi adipisicing vitae aliquid dolorem", true , STR_TO_DATE('12/26/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Uczelnia'), 13),(" aliquid modi non", " reprehenderit voluptatibus, animi voluptates. elit. quisquam reprehenderit voluptatibus, sit omnis quae doloremque aliquid illum. esse", true , STR_TO_DATE('08/08/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Rozmowy'), 25),(" quisquam non modi", " repellendus est Dolores cumque delectus, praesentium provident deserunt elit. Suscipit tempore obcaecati sit facere dolor", true , STR_TO_DATE('08/15/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Rozmowy'), 24),(" tempore Ad reprehenderit", " amet quae commodi doloremque aliquid provident provident esse modi qui voluptates. ad facere distinctio reprehenderit", true , STR_TO_DATE('01/09/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Sprawozdania'), 3),(" modi provident soluta", " omnis adipisicing Suscipit aliquid cumque fugit doloremque exercitationem Lorem, quod consectetur fugit non illum. doloremque", true , STR_TO_DATE('03/04/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Sprawozdania'), 2),(" modi maiores esse", " libero? omnis dolor minima! expedita quae ipsum expedita praesentium modi elit. esse inventore, inventore, sit", true , STR_TO_DATE('01/15/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Sprawozdania'), 9),(" aliquid dignissimos reprehenderit", " Dolores Ad distinctio commodi Ad ex sit voluptatibus, cumque amet reprehenderit natus reprehenderit expedita sed", true , STR_TO_DATE('07/07/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Projekty'), 7),(" Lorem, minima! explicabo", " doloremque reprehenderit obcaecati aliquid amet neque ea dignissimos natus dicta aperiam provident Ad omnis tempore", true , STR_TO_DATE('02/02/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Uczelnia'), 24),(" nobis Dolores sit", " dolor facilis est ipsum doloremque maiores fugit quibusdam sed Lorem, dolorem non deserunt est explicabo", true , STR_TO_DATE('02/24/2020', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Korepetycje'), 3),(" distinctio dolor cumque", " sit non modi Quia?Magni reprehenderit delectus, vitae ad dolore labore aliquid adipisicing aperiam reprehenderit distinctio", true , STR_TO_DATE('01/19/2019', '%m/%d/%Y') , (select idCategory from db.category where db.category.name = 'Uczelnia'), 24);