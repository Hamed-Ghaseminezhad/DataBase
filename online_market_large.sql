CREATE DATABASE online_market;
USE online_market;

#GRANT ALL ON online_market TO ''@localhost;

###################################################
# region
###################################################
CREATE TABLE region(
	name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(500)
);

#GRANT ALL ON region TO ''@localhost;

INSERT INTO region VALUES('Sicilia',NULL);
INSERT INTO region VALUES('Italy',NULL);
INSERT INTO region VALUES('Piemonte',NULL);

###################################################
# sheet
###################################################
CREATE TABLE sheet(
	ID CHAR(5) PRIMARY KEY,
    description VARCHAR(2000),
    region_name VARCHAR(30),
    FOREIGN KEY (region_name) REFERENCES region(name)
);

#GRANT ALL ON sheet TO ''@localhost;

INSERT INTO sheet VALUES('001','Crema di Pistacchio in Tubetto di Alicos: una morbidissima crema al pistacchio, buona e golosa, da oggi ancora più comoda nel formato a tubetto.
Il pistacchio è senza dubbio tra la frutta secca più amata in assoluto, grazie al suo sapore avvolgente e goloso e al suo colore davvero inconfondibile. Utilizzando solo i migliori pistacchi Alicos realizza una crema dolcissima, perfetta per realizzare merende e colazioni gustose.','Sicilia');
INSERT INTO sheet VALUES('002','Spalmabile al Cioccolato Fondente di VIVA by Viviana Varese: una crema spalmabile al cioccolato fondente dalla consistenza avvolgente e cremosa, perfetta per dare un pizzico di dolcezza in più alla tua giornata.
Le creme spalmabili al cioccolato e nocciole sono un grande classico delle colazioni e delle merende all''italiana, uno di quei prodotti a cui è praticamente impossibile resistere. Questa, poi, è una delizia davvero unica perché proviene direttamente dalle cucina di un ristorante stellato: realizzata dai ragazzi di VIVA che scelgono esclusivamente le migliori materie prime, è una crema spalmabile come non l''hai mai assaggiata.','Italy');
INSERT INTO sheet VALUES('003','Spalmabile alla Gianduia di VIVA by Viviana Varese: una crema dal gusto avvolgente e dalla consistenza morbidissima, perfetto per iniziare la giornata con la giusta dose di dolcezza.
Una deliziosa crema realizzata dai ragazzi di VIVA che scelgono esclusivamente le migliori materie prime, è una crema spalmabile come non l''hai mai assaggiata. Dolce, morbida e gustosa: l''ideale per i veri appassionati di cioccolato.','Italy');
INSERT INTO sheet VALUES('004','Crema Spalmabile al Pistacchio di VIVA by Viviana Varese: una crema morbida e golosa alla quale sarà davvero difficile resistere, perfetta per una colazione o una merenda con cui fare il pieno di energia.
Ormai si sa, il pistacchio è un frutto secco in grado di far diventare golosa qualsiasi pietanza, dolce e salata, ma la crema spalmabile al pistacchio è davvero uno dei prodotti più riusciti. Facile da spalmare su pane e fette biscottate, viene realizzata dai ragazzi di VIVA con ingredienti di primissima scelta, che ti permetteranno di portare in tavola un prodotto davvero eccezionale.','Italy');
INSERT INTO sheet VALUES('005','Spalmabile alla Mandorla di VIVA by Viviana Varese: una crema spalmabile dal sapore delicato e dolce con cui guarnire i tuoi dolci e le tue crostate, ma perfetta anche da mangiare in semplicità sulle fette biscottate.
La crema alla mandorla è una spalmabile originale e leggermente diversa rispetto alle versioni più tradizionali e conosciute, ma che ne condivide la morbidezza e il sapore avvolgente. La mandorla, poi, è un frutto che si presta spesso in preparazioni di pasticceria e che risulta sempre un ingrediente di successo nelle ricette più svariate, e anche questa crema spalmabile non costituisce un''eccezione.','Italy');
INSERT INTO sheet VALUES('006','Spalmabile Arachidi e Cacao di VIVA by Viviana Varese: una crema dal gusto avvolgente e dalla consistenza incredibilmente morbida che unisce due degli ingredienti più amati in assoluto.
Le creme di arachidi e le creme di cacao sono tra le spalmabili più conosciute e apprezzate, e in questo prodotto si uniscono alla perfezione, creando un risultato dolcissimo e davvero gustoso. Realizzato dai ragazzi di VIVA, ristorante stellato, a partire da ingredienti accuratamente selezioni e seguendo un processo di lavorazione attento e curato.','Italy');
INSERT INTO sheet VALUES('007','Burro di Arachidi di VIVA by Viviana Varese: una salsa cremosa e dal sapore avvolgente perfetta ogni volta che ti vorrai concedere una coccola.
Il burro d''arachidi è un prodotto molto amato e diffuso soprattutto nella cultura americana, che i ragazzi della gastronomia di VIVA realizzano in modo semplice e naturale, utilizzando come ingredienti solo arachidi e sale. In questo modo il burro non è più solo una crema buonissima e golosa, ma anche un prodotto nutriente e salutare perfetto per fare il pieno di energie durante la giornata.','Italy');
INSERT INTO sheet VALUES('008','Cremosa Gianduia di Caffarel: il segreto dei pasticceri professionisti direttamente a casa tua, sempre a portata di mano.
Realizzata coi migliori ingredienti, Cremosa gianduia di Caffarel è un vero capolavoro italiano che racchiude tutta l’intensità del cacao e la delicatezza delle nocciole italiane tostate ad arte. Morbida e buonissima, questa crema spalmabile grazie al suo pratico formato è semplice da utilizzare e ti permetterà di creare delle vere delizie in cucina, tutte da assaporare.','Piemonte');
INSERT INTO sheet VALUES('009','La crema al limone di Scyavuru morbida e vellutata come non mai, poterà sulla tua tavola l''inebriante profumo dei limoni siciliani.
Una deliziosa alternativa alla marmellata, più omogenea e morbida capace di conquistare i palati più esigenti perché preparata solo con frutta e ingredienti di prima qualità.','Sicilia');
INSERT INTO sheet VALUES('010','La crema all''arancia di Scyavuru nasce dal frutto più rappresentativo della Sicilia, che si trasforma in una crema spalmabile dal gusto e dalla consistenza davvero unici.
Ha un sapore dolce e leggermente acidulo, tipico dei migliori agrumi selezionati e raccolti al giusto punto di maturazione, è morbida e vellutata grazie all''aggiunta di latte.
','Sicilia');
INSERT INTO sheet VALUES('011','Per la realizzazione di questa deliziosa crema di marroni, Agrimontana utilizza soltanto marroni italiani cresciuti su piante che non subiscono alcun trattamento, per poter garantire di portare sulla tua tavola soltanto la natura.
La ricetta viene seguita nel pieno rispetto della tradizione, utilizzando soltanto frutta selezionata e zucchero grezzo di canna. Tali accorgimenti permettono di ottenere una confettura densa, nutriente, e caratterizzata da un sapore particolarmente intenso.','Piemonte');
INSERT INTO sheet VALUES('012','Lo Zabaione al Moscato de La Talpina è noto anche come zabajone o zabaglione ed è una crema dolce e spumosa a base di uova e vino Moscato d''Asti DOCG.
Si presenta profumato, dalla consistenza densa e dal sapore intenso e avvolgente, si può servire come dessert, ma è altresì perfetto come ingrediente di svariate preparazioni.','Piemonte');


###################################################
# producer
###################################################
CREATE TABLE producer(
	name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(2000)
);

#GRANT ALL ON producer TO ''@localhost;

INSERT INTO producer VALUES('Alicos','L''Azienda Agricola Alicos è nata per valorizzare al massimo la produzione siciliana, soprattutto quella che caratterizza l''area di Salemi, dove si trova il primo sito produttivo dell''azienda. Oltre a produrre pregiato olio d''oliva, realizza anche conserve preparate osservando la più antica tradizione siciliana, con un''attenta selezione delle materie prime e con l''utilizzo dell''ottimo olio extravergine che regala un sapore unico.');
INSERT INTO producer VALUES('VIVA by Viviana Varese','VIVA: ristorante stellata di Viviana Varese. Viviana nasce a Salerno da una famiglia di ristoratori ed esordisce come pizzaiola a soli 7 anni. A 21 segue il primo stage al ristorante Mediterraneo di Piacenza dove affianca lo chef formatosi alla Cascina Rossa, storico locale del golfo di Napoli e acquisisce le prime basi di cucina mediterranea e pasticceria. Segue lo stage con Gualtiero Marchesi, due stelle Michelin, dal quale apprende dal Maestro l''organizzazione di un grande ristorante. Il suo debutto avviene il 29 maggio 1999: nasce Girasole il suo primo ristorante a Lodi. Poi avviene l''incontro con Sandra Ciciriello che da'' il via nel 2007 a ALICE. Aprono infatti a Milano e nel 2011 arriva la prima stella Michelin che premia una cucina il cui protagonista è soprattutto il pesce, scelto personalmente da Sandra. Nel 2019, poi, Alice ha cambiato nome ed è diventata VIVA, acronimo di Viviana Varese, in cui la chef esprime tutta sè stessa.');
INSERT INTO producer VALUES('Caffarel','Caffarel nasce nel 1826, quasi 200 anni fa, quando il cioccolato era una specialità esotica, irraggiungibile: pochi in Europa ne avevano sentito parlare e ancora meno l’avevano assaggiato. Nel 1826 Paul Caffarel aprì la sua bottega a Torino, che anche grazie a lui è diventata una capitale del cioccolato. Ma in quegli anni di guerre continue in Europa il cacao è merce rara. Così nasce il Gianduiotto, la più straordinaria invenzione Caffarel e una delle più memorabili specialità nel mondo del cioccolato: unendo al cacao le nocciole Piemonte tostate. Caffarel si definisce oggi come creatore di cioccolato e di piaceri, inventore del gianduiotto, cultura torinese del cioccolato.');
INSERT INTO producer VALUES('Scyavuru','Le aziende agricole Scyavuru si fondano sulla passione siciliana per la terra e i suoi frutti. sull''amore per un patrimonio culturale inestimabile. e sull''attenzione alle tradizioni più antiche. Scyavuru è infatti un termine del dialetto siciliano che significa fragranza. profumo. Ed è proprio a partire dal laboratorio aziendale dei sapori che si producono i prodotti più buoni. cercando di abolire il maggior numero di passaggi della filiera distributiva per offrire al consumatore la freschezza di un alimento genuino e prodotto in armonia con la natura. Le ricette seguite sono quelle della tradizione più antica. abbinate ad una costante spinta innovativa che consente di soddisfare anche i gusti più moderni.');
INSERT INTO producer VALUES('Agrimontana','Agrimontana nasce nel 1972 a Borgo San Dalmazzo (CN). Presto divenuta leader nel settore della frutta candita e dei marroni in particolare, la cui qualità è offerta ai consumatori, ai pasticcieri e agli chef. I marroni sono selezionati nei posti del Piemonte che soli al mondo sono in grado di garantire le superbe caratteristiche degli aromi e dei sapori che li rendono inimitabili. Le geleès di frutta sono senza aromatizzanti o coloranti aggiunti. ');
INSERT INTO producer VALUES('La Talpina','Sara e Franco Bignante, nel loro laboratorio di Genola (CN), producono le più tipiche specialità locali nel rispetto delle ricette tradizionali. L''azienda La Talpina offre infatti prodotti in grado di far riscoprire il sapore delle cose buone di una volta, realizzate nel rispetto dei valori familiari.');

###################################################
# produced
###################################################
CREATE TABLE produced(
	producer_name VARCHAR(30),
    sheet_ID CHAR(5),
    FOREIGN KEY (producer_name) REFERENCES producer(name),
    FOREIGN KEY (sheet_ID) REFERENCES sheet(ID)
);

#GRANT ALL ON produced TO ''@localhost;

INSERT INTO produced VALUES('Alicos','001');
INSERT INTO produced VALUES('VIVA by Viviana Varese','002');
INSERT INTO produced VALUES('VIVA by Viviana Varese','003');
INSERT INTO produced VALUES('VIVA by Viviana Varese','004');
INSERT INTO produced VALUES('VIVA by Viviana Varese','005');
INSERT INTO produced VALUES('VIVA by Viviana Varese','006');
INSERT INTO produced VALUES('VIVA by Viviana Varese','007');
INSERT INTO produced VALUES('Caffarel','008');
INSERT INTO produced VALUES('Scyavuru','009');
INSERT INTO produced VALUES('Scyavuru','010');
INSERT INTO produced VALUES('Agrimontana','011');
INSERT INTO produced VALUES('La Talpina','012');


###################################################
# ingredient
###################################################
CREATE TABLE ingredient(
	name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(500)
);

#GRANT ALL ON ingredient TO ''@localhost;

###################################################
# made
###################################################
CREATE TABLE made(
	ingredient_name VARCHAR(30),
    sheet_ID CHAR(5),
    FOREIGN KEY (ingredient_name) REFERENCES ingredient(name),
    FOREIGN KEY (sheet_ID) REFERENCES sheet(ID)
);

#GRANT ALL ON made TO ''@localhost;

###################################################
# menu
###################################################

CREATE TABLE menu(
    name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(500),
    main VARCHAR(30) REFERENCES name
);

#GRANT ALL ON menu TO ''@localhost;

INSERT INTO menu VALUES('Preserved Foods',NULL, NULL);
INSERT INTO menu VALUES('Olives and Capers',NULL, 'Preserved Foods');
INSERT INTO menu VALUES('Sauces and Pesto',NULL, 'Preserved Foods');
INSERT INTO menu VALUES('Cream and Pate',NULL, 'Preserved Foods');
INSERT INTO menu VALUES('Sweet Products',NULL, NULL);
INSERT INTO menu VALUES('Marmelade and Jam',NULL,'Sweet Products');
INSERT INTO menu VALUES('Spreadables Creams',NULL,'Sweet Products');
INSERT INTO menu VALUES('Condiments',NULL, NULL);
INSERT INTO menu VALUES('Olive Oil',NULL, 'Condiments');
INSERT INTO menu VALUES('Vinegar',NULL, 'Condiments');
INSERT INTO menu VALUES('Cereals and Legumens',NULL, NULL);
INSERT INTO menu VALUES('Legumes',NULL, 'Cereals and Legumens');

###################################################
# food
###################################################

CREATE TABLE food(
    name VARCHAR(50),
    unit VARCHAR(10),
    weight NUMERIC(5,2),
    label VARCHAR(500),
    price NUMERIC(5,2),
    startDate DATE,
    endDate DATE,
    menu_name  VARCHAR(30),
    sheet_ID CHAR(5),
    PRIMARY KEY(name, unit, weight),
    FOREIGN KEY (menu_name) REFERENCES menu(name),
    FOREIGN KEY (sheet_ID) REFERENCES sheet(ID)
);

#GRANT ALL ON food TO ''@localhost;

INSERT INTO food VALUES('Capers in Sea Salt', 'g', 500, 'La Nicchia', 17.50,'2019-12-01', NULL, 'Olives and Capers', NULL);
INSERT INTO food VALUES('Capers in Sea Salt', 'g', 200, 'La Nicchia', 8.98, '2019-10-15', '2020-06-15', 'Olives and Capers', NULL);
INSERT INTO food VALUES('Pistachio Pesto', 'g', 190, 'Scyavuru', 8.9, '2018-8-20', NULL, 'Sauces and Pesto', NULL);
INSERT INTO food VALUES('Traditional Bolognese Ragù', 'g', 180, 'La Dispensa di Amerigo ', 6.9, '2018-8-20', NULL, 'Sauces and Pesto', NULL);
INSERT INTO food VALUES('Organic Tomato and Basil Sauce', 'g', 340, 'Buonamici', 2.4, '2020-01-15', '2020-09-15', 'Sauces and Pesto', NULL);
INSERT INTO food VALUES('Historical Bolognese Ragù', 'g', 200, 'La Dispensa di Amerigo', 6.9, '2019-02-01', NULL, 'Sauces and Pesto', NULL);
INSERT INTO food VALUES('Roast Meat Ragù', 'g', 190, 'La Granda Pronta', 5.9, '2019-11-30', NULL, 'Sauces and Pesto', NULL);

INSERT INTO food VALUES('Black Olive Paste', 'g', 80, 'Roi', 2.70, '2019-12-01', '2020-01-31', 'Cream and Pate', NULL);


INSERT INTO food VALUES('strawberry extra marmelade', 'g', 340, 'Erberossi', 3.6, '2019-09-01', NULL, 'Marmelade and Jam', NULL);

INSERT INTO food VALUES('Pistachio Cream', 'g', 200, 'Scyavuru', 7.40, '2019-09-01', NULL, 'Spreadables Creams', NULL);
INSERT INTO food VALUES('Cocoa & Hazelnut Cream', 'g', 200, 'Golosi di Salute', 6.90, '2019-09-01', NULL, 'Spreadables Creams', NULL);
INSERT INTO food VALUES('Gianduja Cream', 'g', 380, 'Maison Nocciola Piemonte', 11.90, '2020-02-01', NULL, 'Spreadables Creams', NULL);
INSERT INTO food VALUES('Pistachio Cream', 'g', 150, 'Babbi', 5.90, '2018-11-20', NULL, 'Spreadables Creams', NULL);

INSERT INTO food VALUES('Organic Extra Virgin Olive Oil', 'ml', 500, 'Cufrol', 8.90, '2019-12-01', '2020-01-31', 'Olive Oil', NULL);
INSERT INTO food VALUES('Primo Organic Extra Virgin Olive Oil', 'ml', 500, 'Frantoi Cutrera', 14.90, '2019-12-01', '2020-06-30', 'Olive Oil', NULL);
INSERT INTO food VALUES('Extra Virgin Nocellara Olive Oil', 'ml', 750, 'Olis Geraci', 14.80, '2018-06-01', NULL, 'Olive Oil', NULL);

INSERT INTO food VALUES('Balsamic Vinegar Glaze', 'ml', 250, 'Acetomodena', 7.80, '2020-04-15', NULL, 'Vinegar', NULL);
INSERT INTO food VALUES('Aceto Modena 2 medaglie', 'ml', 250, 'Giusti', 13.60, '2019-10-30', NULL, 'Vinegar', NULL);

INSERT INTO food VALUES('Colfiorito lentils', 'kg', 0.5, 'La Valletta', 4.60, '2019-10-30', NULL, 'Legumes', NULL);
INSERT INTO food VALUES('Borlotti Beans', 'g', 400, 'Alce Nero', 4.40, '2019-10-30', NULL, 'Legumes', NULL);
###################################################
INSERT INTO food VALUES('Crema di Pistacchio in Tubetto','g',100,'Alicos',5.98,'2021-04-20',NULL,'Spreadables Creams','001');
INSERT INTO food VALUES('Spalmabile al Cioccolato Fondente','g',270,'VIVA by Viviana Varese',9.9,'2021-04-20',NULL,'Spreadables Creams','002');
INSERT INTO food VALUES('Spalmabile alla Gianduia','g',270,'VIVA by Viviana Varese',9.5,'2021-04-20',NULL,'Spreadables Creams','003');
INSERT INTO food VALUES('Crema Spalmabile al Pistacchio','g',270,'VIVA by Viviana Varese',16,'2021-04-20',NULL,'Spreadables Creams','004');
INSERT INTO food VALUES('Spalmabile alla Mandorla','g',270,'VIVA by Viviana Varese',8.8,'2021-04-20',NULL,'Spreadables Creams','005');
INSERT INTO food VALUES('Spalmabile Arachidi e Cacao','g',270,'VIVA by Viviana Varese',8.5,'2021-04-20',NULL,'Spreadables Creams','006');
INSERT INTO food VALUES('Burro di Arachidi','g',270,'VIVA by Viviana Varese',8,'2021-04-20',NULL,'Spreadables Creams','007');
INSERT INTO food VALUES('Cremosa Gianduia','g',300,'Caffarel',6.9,'2021-04-20',NULL,'Spreadables Creams','008');
INSERT INTO food VALUES('Crema al Limone','g',200,'Scyavuru',4.6,'2021-04-20',NULL,'Spreadables Creams','009');
INSERT INTO food VALUES('Crema all''Arancia','g',220,'Scyavuru',4.8,'2021-04-20',NULL,'Spreadables Creams','010');
INSERT INTO food VALUES('Crema al Pistacchio','g',200,'Scyavuru',7.4,'2021-04-20',NULL,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Crema Pistacchio&Arancia','g',230,'Scyavuru',5.6,'2021-06-10',NULL,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Crema Alle Mandorle','g',200,'Scyavuru',5.4,'2021-06-10',NULL,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Crema di Pistacchio','g',190,'Alicos',9.9,'2021-06-10',NULL,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Crema di Mandorla Vegana','g',190,'Alicos',7.6,'2021-06-10',NULL,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Crema di Marroni','g',350,'Agrimontana',7.9,'2021-06-10',NULL,'Spreadables Creams','011');
INSERT INTO food VALUES('Crema di Marroni Bio','g',330,'Achillea',4.9,'2021-06-10',NULL,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Zabaglione al Moscato','g',300,'La Talpina',5.5,'2021-06-10',NULL,'Spreadables Creams','012');
INSERT INTO food VALUES('Zabaione al Moscato','g',200,'Olivero Claudio',8.4,'2021-06-10',NULL,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Zabaione al Passito','g',240,'Olivero Claudio',13.9,'2021-06-10',NULL,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Budino al Cacao','g',400,'Altromercato',1.5,'2021-06-10',NULL,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Teo&Bia Crema alle Nocciole','g',212,'La Finestra sul Cielo',10.5,'2021-06-10',NULL,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Crema di pistacchio di Bronte DOP','g',600,'Antica Bronte Dolceria',14.9,'2021-06-10',NULL,'Spreadables Creams',NULL);
INSERT INTO food VALUES('Cremadelizia al Cacao','g',150,'Babbi',4.3,'2021-06-10',NULL,'Spreadables Creams',NULL);


###################################################
# gift basket
###################################################

CREATE TABLE giftBasket(
    name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(500)
);

#GRANT ALL ON giftBasket TO ''@localhost;

INSERT INTO giftBasket VALUES('Gift hamper', 'for your daily trip');
INSERT INTO giftBasket VALUES('Delight taste', 'for elegant moments');
INSERT INTO giftBasket VALUES('Savory basket', 'tradition and genuineness');

###################################################
# basket comibines
###################################################

CREATE TABLE basketCombines(
    basket_name VARCHAR(30),
    food_name VARCHAR(50),
    food_unit VARCHAR(10),
    food_weight NUMERIC(5,2),
    FOREIGN KEY (basket_name) REFERENCES giftBasket(name),
    FOREIGN KEY (food_name, food_unit, food_weight) REFERENCES food(name, unit, weight)
);

#GRANT ALL ON basketCombines TO ''@localhost;

INSERT INTO basketCombines VALUES('Delight taste', 'Pistachio Cream', 'g', 200);
INSERT INTO basketCombines VALUES('Delight taste', 'Colfiorito lentils', 'kg', 0.5);
INSERT INTO basketCombines VALUES('Delight taste', 'Capers in Sea Salt', 'g', 200);
INSERT INTO basketCombines VALUES('Delight taste', 'Organic Extra Virgin Olive Oil', 'ml', 500);
INSERT INTO basketCombines VALUES('Savory basket', 'Pistachio Cream', 'g', 150);
INSERT INTO basketCombines VALUES('Savory basket', 'Colfiorito lentils', 'kg', 0.5);
INSERT INTO basketCombines VALUES('Savory basket', 'Aceto Modena 2 medaglie', 'ml', 250);
INSERT INTO basketCombines VALUES('Savory basket', 'Capers in Sea Salt', 'g', 500);
INSERT INTO basketCombines VALUES('Savory basket', 'Organic Extra Virgin Olive Oil', 'ml', 500);
INSERT INTO basketCombines VALUES('Savory basket', 'Black Olive Paste', 'g', 80);
INSERT INTO basketCombines VALUES('Savory basket', 'Historical Bolognese Ragù', 'g', 200);

###################################################
# user
###################################################
CREATE TABLE user(
	ID INT PRIMARY KEY,
    date DATE,
    time TIME,
    network_info VARCHAR(100)
);

#GRANT ALL ON user TO ''@localhost;

INSERT INTO user VALUES(1,'2021-04-01','00:23','106.115.24.157');
INSERT INTO user VALUES(2,'2021-01-11','10:04','124.63.118.178');
INSERT INTO user VALUES(3,'2021-08-01','20:14','27.40.69.43');
INSERT INTO user VALUES(4,'2021-09-08','23:53','220.130.38.150');
INSERT INTO user VALUES(5,'2021-06-02','16:39','13.179.191.90');
INSERT INTO user VALUES(6,'2021-08-04','06:49','233.106.204.87');
INSERT INTO user VALUES(7,'2021-03-18','14:42','126.31.66.153');
INSERT INTO user VALUES(8,'2021-04-07','05:53','158.60.2.59');
INSERT INTO user VALUES(9,'2021-05-20','19:51','28.246.175.99');
INSERT INTO user VALUES(10,'2021-09-05','19:33','70.234.159.248');
INSERT INTO user VALUES(11,'2021-02-18','10:09','162.120.80.158');
INSERT INTO user VALUES(12,'2021-09-03','06:52','216.113.144.40');
INSERT INTO user VALUES(13,'2021-04-09','11:31','137.128.50.157');
INSERT INTO user VALUES(14,'2021-03-09','05:17','88.93.194.233');
INSERT INTO user VALUES(15,'2021-08-19','09:41','96.129.253.212');
INSERT INTO user VALUES(16,'2021-07-21','16:48','26.219.11.134');
INSERT INTO user VALUES(17,'2021-04-13','14:48','173.168.174.11');
INSERT INTO user VALUES(18,'2021-05-24','15:37','124.90.10.215');
INSERT INTO user VALUES(19,'2021-02-17','18:41','122.155.150.7');
INSERT INTO user VALUES(20,'2021-07-03','18:33','16.99.55.62');
INSERT INTO user VALUES(21,'2021-06-16','16:22','126.31.66.153');
INSERT INTO user VALUES(22,'2021-01-05','00:08','16.99.55.62');
INSERT INTO user VALUES(23,'2021-07-04','17:09','16.99.55.62');
INSERT INTO user VALUES(24,'2021-05-18','19:43','32.110.142.57');
INSERT INTO user VALUES(25,'2021-07-25','10:48','122.155.150.7');
INSERT INTO user VALUES(26,'2021-07-14','21:43','100.151.195.242');
INSERT INTO user VALUES(27,'2021-07-13','13:39','17.252.170.163');
INSERT INTO user VALUES(28,'2021-03-07','13:28','78.226.254.156');
INSERT INTO user VALUES(29,'2021-06-23','04:28','42.119.23.31');
INSERT INTO user VALUES(30,'2021-07-25','03:45','100.7.41.140');
INSERT INTO user VALUES(31,'2021-02-20','02:16','66.144.17.124');
INSERT INTO user VALUES(32,'2021-02-09','12:25','153.25.93.179');
INSERT INTO user VALUES(33,'2021-03-26','06:26','100.151.195.242');
INSERT INTO user VALUES(34,'2021-09-11','21:24','44.229.137.227');
INSERT INTO user VALUES(35,'2021-04-21','23:09','128.16.79.128');
INSERT INTO user VALUES(36,'2021-06-09','14:22','112.185.251.89');
INSERT INTO user VALUES(37,'2021-03-05','23:47','209.32.173.173');
INSERT INTO user VALUES(38,'2021-06-08','07:28','220.147.161.209');
INSERT INTO user VALUES(39,'2021-09-23','01:15','126.31.66.153');
INSERT INTO user VALUES(40,'2021-01-13','18:13','29.109.100.119');
INSERT INTO user VALUES(41,'2021-08-06','21:42','15.106.56.229');
INSERT INTO user VALUES(42,'2021-01-02','13:06','126.31.66.153');
INSERT INTO user VALUES(43,'2021-09-06','04:22','15.242.78.155');
INSERT INTO user VALUES(44,'2021-06-09','22:28','138.218.88.94');
INSERT INTO user VALUES(45,'2021-07-13','17:20','100.175.22.122');
INSERT INTO user VALUES(46,'2021-05-02','22:17','187.48.255.44');
INSERT INTO user VALUES(47,'2021-06-16','01:13','203.211.235.63');
INSERT INTO user VALUES(48,'2021-02-25','00:36','44.229.137.227');
INSERT INTO user VALUES(49,'2021-04-08','14:51','155.183.121.140');
INSERT INTO user VALUES(50,'2021-07-26','02:02','197.107.205.140');

###################################################
# consulted
###################################################

CREATE TABLE consulted(
    ID INT,
    food_name VARCHAR(50),
    food_unit VARCHAR(10),
    food_weight NUMERIC(5,2),
    time TIME,
    FOREIGN KEY (ID) REFERENCES user(ID),
    FOREIGN KEY (food_name, food_unit, food_weight) REFERENCES food(name, unit, weight)
);

#GRANT ALL ON consulted TO ''@localhost;

INSERT INTO consulted VALUES(50,'Traditional Bolognese Ragù','g',180.00,'02:07');
INSERT INTO consulted VALUES(33,'Crema all''Arancia','g',220.00,'06:30');
INSERT INTO consulted VALUES(25,'Black Olive Paste','g',80.00,'10:52');
INSERT INTO consulted VALUES(34,'Historical Bolognese Ragù','g',200.00,'21:27');
INSERT INTO consulted VALUES(44,'Spalmabile alla Gianduia','g',270.00,'22:28');
INSERT INTO consulted VALUES(11,'Crema Spalmabile al Pistacchio','g',270.00,'10:14');
INSERT INTO consulted VALUES(29,'Extra Virgin Nocellara Olive Oil','ml',750.00,'04:31');
INSERT INTO consulted VALUES(47,'Traditional Bolognese Ragù','g',180.00,'01:15');
INSERT INTO consulted VALUES(44,'Aceto Modena 2 medaglie','ml',250.00,'22:29');
INSERT INTO consulted VALUES(12,'Spalmabile alla Mandorla','g',270.00,'06:52');
INSERT INTO consulted VALUES(14,'Primo Organic Extra Virgin Olive Oil','ml',500.00,'05:22');
INSERT INTO consulted VALUES(16,'Burro di Arachidi','g',270.00,'16:48');
INSERT INTO consulted VALUES(29,'Black Olive Paste','g',80.00,'04:28');
INSERT INTO consulted VALUES(29,'Capers in Sea Salt','g',200.00,'04:33');
INSERT INTO consulted VALUES(48,'Crema Spalmabile al Pistacchio','g',270.00,'00:39');
INSERT INTO consulted VALUES(36,'Crema al Limone','g',200.00,'14:24');
INSERT INTO consulted VALUES(46,'Burro di Arachidi','g',270.00,'22:20');
INSERT INTO consulted VALUES(47,'Primo Organic Extra Virgin Olive Oil','ml',500.00,'01:15');
INSERT INTO consulted VALUES(35,'Capers in Sea Salt','g',200.00,'23:12');
INSERT INTO consulted VALUES(12,'Organic Tomato and Basil Sauce','g',340.00,'06:52');
INSERT INTO consulted VALUES(15,'Extra Virgin Nocellara Olive Oil','ml',750.00,'09:44');
INSERT INTO consulted VALUES(35,'Roast Meat Ragù','g',190.00,'23:11');
INSERT INTO consulted VALUES(35,'Pistachio Pesto','g',190.00,'23:10');
INSERT INTO consulted VALUES(35,'Pistachio Cream','g',200.00,'23:13');
INSERT INTO consulted VALUES(6,'Crema al Limone','g',200.00,'06:49');
INSERT INTO consulted VALUES(35,'Spalmabile al Cioccolato Fondente','g',270.00,'23:11');
INSERT INTO consulted VALUES(43,'Cocoa & Hazelnut Cream','g',200.00,'04:24');
INSERT INTO consulted VALUES(47,'Crema all''Arancia','g',220.00,'01:16');
INSERT INTO consulted VALUES(15,'Traditional Bolognese Ragù','g',180.00,'09:42');
INSERT INTO consulted VALUES(5,'Spalmabile al Cioccolato Fondente','g',270.00,'16:43');
INSERT INTO consulted VALUES(4,'Pistachio Cream','g',200.00,'23:53');
INSERT INTO consulted VALUES(26,'Crema al Pistacchio','g',200.00,'21:43');
INSERT INTO consulted VALUES(16,'strawberry extra marmelade','g',340.00,'16:53');
INSERT INTO consulted VALUES(43,'Roast Meat Ragù','g',190.00,'04:27');
INSERT INTO consulted VALUES(34,'Borlotti Beans','g',400.00,'21:24');
INSERT INTO consulted VALUES(47,'Roast Meat Ragù','g',190.00,'01:18');
INSERT INTO consulted VALUES(1,'Gianduja Cream','g',380.00,'00:24');
INSERT INTO consulted VALUES(42,'Traditional Bolognese Ragù','g',180.00,'13:10');
INSERT INTO consulted VALUES(11,'Roast Meat Ragù','g',190.00,'10:13');
INSERT INTO consulted VALUES(29,'Crema di Pistacchio in Tubetto','g',100.00,'04:30');
INSERT INTO consulted VALUES(14,'Capers in Sea Salt','g',200.00,'05:22');
INSERT INTO consulted VALUES(45,'Roast Meat Ragù','g',190.00,'17:24');
INSERT INTO consulted VALUES(24,'Crema all''Arancia','g',220.00,'19:46');
INSERT INTO consulted VALUES(44,'Historical Bolognese Ragù','g',200.00,'22:31');
INSERT INTO consulted VALUES(15,'Cremosa Gianduia','g',300.00,'09:43');
INSERT INTO consulted VALUES(12,'Spalmabile alla Mandorla','g',270.00,'06:55');
INSERT INTO consulted VALUES(23,'Traditional Bolognese Ragù','g',180.00,'17:11');
INSERT INTO consulted VALUES(40,'Black Olive Paste','g',80.00,'18:15');
INSERT INTO consulted VALUES(39,'Spalmabile alla Gianduia','g',270.00,'01:15');
INSERT INTO consulted VALUES(21,'Cocoa & Hazelnut Cream','g',200.00,'16:24');
INSERT INTO consulted VALUES(17,'Crema di Marroni','g',350.00,'14:49');
INSERT INTO consulted VALUES(15,'Capers in Sea Salt','g',200.00,'09:46');
INSERT INTO consulted VALUES(38,'Aceto Modena 2 medaglie','ml',250.00,'07:29');
INSERT INTO consulted VALUES(36,'Pistachio Cream','g',150.00,'14:23');
INSERT INTO consulted VALUES(5,'Spalmabile alla Mandorla','g',270.00,'16:42');
INSERT INTO consulted VALUES(44,'Spalmabile al Cioccolato Fondente','g',270.00,'22:31');
INSERT INTO consulted VALUES(46,'Gianduja Cream','g',380.00,'22:18');
INSERT INTO consulted VALUES(8,'Cremosa Gianduia','g',300.00,'05:56');
INSERT INTO consulted VALUES(27,'Gianduja Cream','g',380.00,'13:39');
INSERT INTO consulted VALUES(13,'Spalmabile alla Gianduia','g',270.00,'11:35');
INSERT INTO consulted VALUES(8,'Cocoa & Hazelnut Cream','g',200.00,'05:58');
INSERT INTO consulted VALUES(28,'Spalmabile al Cioccolato Fondente','g',270.00,'13:28');
INSERT INTO consulted VALUES(27,'Borlotti Beans','g',400.00,'13:42');
INSERT INTO consulted VALUES(32,'Pistachio Cream','g',150.00,'12:27');
INSERT INTO consulted VALUES(44,'Crema di Pistacchio in Tubetto','g',100.00,'22:30');
INSERT INTO consulted VALUES(11,'Pistachio Cream','g',200.00,'10:14');
INSERT INTO consulted VALUES(27,'Black Olive Paste','g',80.00,'13:44');
INSERT INTO consulted VALUES(48,'Spalmabile alla Gianduia','g',270.00,'00:39');
INSERT INTO consulted VALUES(6,'Traditional Bolognese Ragù','g',180.00,'06:52');
INSERT INTO consulted VALUES(45,'Spalmabile alla Mandorla','g',270.00,'17:24');
INSERT INTO consulted VALUES(34,'Gianduja Cream','g',380.00,'21:29');
INSERT INTO consulted VALUES(9,'Crema di Marroni','g',350.00,'19:52');
INSERT INTO consulted VALUES(41,'Spalmabile alla Gianduia','g',270.00,'21:47');
INSERT INTO consulted VALUES(2,'Capers in Sea Salt','g',500.00,'10:04');
INSERT INTO consulted VALUES(9,'Extra Virgin Nocellara Olive Oil','ml',750.00,'19:51');
INSERT INTO consulted VALUES(36,'Crema al Limone','g',200.00,'14:23');
INSERT INTO consulted VALUES(48,'Burro di Arachidi','g',270.00,'00:38');
INSERT INTO consulted VALUES(8,'Roast Meat Ragù','g',190.00,'05:57');
INSERT INTO consulted VALUES(8,'Black Olive Paste','g',80.00,'05:57');
INSERT INTO consulted VALUES(30,'Crema al Pistacchio','g',200.00,'03:46');
INSERT INTO consulted VALUES(49,'Spalmabile alla Mandorla','g',270.00,'14:54');
INSERT INTO consulted VALUES(27,'Crema all''Arancia','g',220.00,'13:43');
INSERT INTO consulted VALUES(4,'Pistachio Cream','g',200.00,'23:55');
INSERT INTO consulted VALUES(35,'Organic Extra Virgin Olive Oil','ml',500.00,'23:14');
INSERT INTO consulted VALUES(38,'Balsamic Vinegar Glaze','ml',250.00,'07:28');
INSERT INTO consulted VALUES(30,'Gianduja Cream','g',380.00,'03:45');
INSERT INTO consulted VALUES(42,'Cocoa & Hazelnut Cream','g',200.00,'13:10');
INSERT INTO consulted VALUES(33,'Historical Bolognese Ragù','g',200.00,'06:26');
INSERT INTO consulted VALUES(2,'Crema al Pistacchio','g',200.00,'10:05');
INSERT INTO consulted VALUES(30,'Gianduja Cream','g',380.00,'03:45');
INSERT INTO consulted VALUES(7,'Primo Organic Extra Virgin Olive Oil','ml',500.00,'14:43');
INSERT INTO consulted VALUES(45,'Capers in Sea Salt','g',500.00,'17:23');
INSERT INTO consulted VALUES(44,'Cremosa Gianduia','g',300.00,'22:33');
INSERT INTO consulted VALUES(22,'Crema di Marroni','g',350.00,'00:09');
INSERT INTO consulted VALUES(45,'Crema al Limone','g',200.00,'17:20');
INSERT INTO consulted VALUES(22,'Spalmabile alla Gianduia','g',270.00,'00:13');
INSERT INTO consulted VALUES(48,'Pistachio Cream','g',150.00,'00:38');
INSERT INTO consulted VALUES(36,'Spalmabile Arachidi e Cacao','g',270.00,'14:27');
INSERT INTO consulted VALUES(4,'Historical Bolognese Ragù','g',200.00,'23:53');
INSERT INTO consulted VALUES(4,'Pistachio Cream','g',200.00,'23:54');

###################################################
# consulted
###################################################

CREATE TABLE selected(
    ID INT,
    food_name VARCHAR(50),
    food_unit VARCHAR(10),
    food_weight NUMERIC(5,2),
    time TIME,
    quantity INT,
    FOREIGN KEY (ID) REFERENCES user(ID),
    FOREIGN KEY (food_name, food_unit, food_weight) REFERENCES food(name, unit, weight)
);

#GRANT ALL ON selected TO ''@localhost;

INSERT INTO selected VALUES(18,'Burro di Arachidi','g',270.00,'15:40',0);
INSERT INTO selected VALUES(42,'Organic Extra Virgin Olive Oil','ml',500.00,'13:07',3);
INSERT INTO selected VALUES(28,'Pistachio Pesto','g',190.00,'13:28',2);
INSERT INTO selected VALUES(4,'Traditional Bolognese Ragù','g',180.00,'23:58',3);
INSERT INTO selected VALUES(6,'Capers in Sea Salt','g',200.00,'06:51',0);
INSERT INTO selected VALUES(2,'Crema di Pistacchio in Tubetto','g',100.00,'10:07',0);
INSERT INTO selected VALUES(28,'Crema Spalmabile al Pistacchio','g',270.00,'13:33',2);
INSERT INTO selected VALUES(38,'Cremosa Gianduia','g',300.00,'07:28',1);
INSERT INTO selected VALUES(43,'Cocoa & Hazelnut Cream','g',200.00,'04:23',3);
INSERT INTO selected VALUES(34,'Pistachio Cream','g',200.00,'21:27',0);
INSERT INTO selected VALUES(4,'Historical Bolognese Ragù','g',200.00,'23:56',2);
INSERT INTO selected VALUES(9,'Historical Bolognese Ragù','g',200.00,'19:53',3);
INSERT INTO selected VALUES(15,'Black Olive Paste','g',80.00,'09:41',2);
INSERT INTO selected VALUES(8,'Balsamic Vinegar Glaze','ml',250.00,'05:55',1);
INSERT INTO selected VALUES(2,'Pistachio Cream','g',200.00,'10:07',3);
INSERT INTO selected VALUES(10,'Burro di Arachidi','g',270.00,'19:33',2);
INSERT INTO selected VALUES(8,'Capers in Sea Salt','g',200.00,'05:56',3);
INSERT INTO selected VALUES(6,'Capers in Sea Salt','g',200.00,'06:50',2);
INSERT INTO selected VALUES(30,'Crema all''Arancia','g',220.00,'03:50',0);
INSERT INTO selected VALUES(40,'Borlotti Beans','g',400.00,'18:18',0);
INSERT INTO selected VALUES(41,'Crema di Pistacchio in Tubetto','g',100.00,'21:45',1);
INSERT INTO selected VALUES(16,'Crema all''Arancia','g',220.00,'16:48',1);
INSERT INTO selected VALUES(25,'Pistachio Cream','g',200.00,'10:49',3);
INSERT INTO selected VALUES(33,'Colfiorito lentils','kg',0.50,'06:31',2);
INSERT INTO selected VALUES(5,'Colfiorito lentils','kg',0.50,'16:44',3);
INSERT INTO selected VALUES(36,'Borlotti Beans','g',400.00,'14:23',1);
INSERT INTO selected VALUES(33,'Traditional Bolognese Ragù','g',180.00,'06:29',2);
INSERT INTO selected VALUES(4,'Crema al Pistacchio','g',200.00,'23:53',0);
INSERT INTO selected VALUES(26,'Pistachio Cream','g',200.00,'21:45',0);
INSERT INTO selected VALUES(13,'Crema di Marroni','g',350.00,'11:33',0);
INSERT INTO selected VALUES(3,'Balsamic Vinegar Glaze','ml',250.00,'20:15',3);
INSERT INTO selected VALUES(11,'Capers in Sea Salt','g',200.00,'10:11',3);
INSERT INTO selected VALUES(50,'Burro di Arachidi','g',270.00,'02:05',2);
INSERT INTO selected VALUES(24,'Crema al Pistacchio','g',200.00,'19:48',2);
INSERT INTO selected VALUES(19,'Aceto Modena 2 medaglie','ml',250.00,'18:41',1);
INSERT INTO selected VALUES(44,'Pistachio Cream','g',200.00,'22:32',0);
INSERT INTO selected VALUES(32,'Organic Tomato and Basil Sauce','g',340.00,'12:28',3);
INSERT INTO selected VALUES(22,'Black Olive Paste','g',80.00,'00:13',2);
INSERT INTO selected VALUES(5,'Pistachio Cream','g',200.00,'16:43',3);
INSERT INTO selected VALUES(14,'Black Olive Paste','g',80.00,'05:19',3);
INSERT INTO selected VALUES(16,'Crema Spalmabile al Pistacchio','g',270.00,'16:51',3);
INSERT INTO selected VALUES(13,'Capers in Sea Salt','g',200.00,'11:33',2);
INSERT INTO selected VALUES(23,'Burro di Arachidi','g',270.00,'17:13',0);
INSERT INTO selected VALUES(12,'Crema di Pistacchio in Tubetto','g',100.00,'06:56',2);
INSERT INTO selected VALUES(42,'Roast Meat Ragù','g',190.00,'13:09',1);
INSERT INTO selected VALUES(32,'Borlotti Beans','g',400.00,'12:26',1);
INSERT INTO selected VALUES(45,'Pistachio Pesto','g',190.00,'17:21',1);
INSERT INTO selected VALUES(7,'Organic Tomato and Basil Sauce','g',340.00,'14:47',3);
INSERT INTO selected VALUES(1,'Organic Tomato and Basil Sauce','g',340.00,'00:28',2);
INSERT INTO selected VALUES(49,'strawberry extra marmelade','g',340.00,'14:51',1);
INSERT INTO selected VALUES(25,'Organic Tomato and Basil Sauce','g',340.00,'10:51',3);
INSERT INTO selected VALUES(36,'strawberry extra marmelade','g',340.00,'14:23',0);
INSERT INTO selected VALUES(9,'Capers in Sea Salt','g',200.00,'19:56',3);
INSERT INTO selected VALUES(19,'Spalmabile alla Gianduia','g',270.00,'18:45',1);
INSERT INTO selected VALUES(11,'Primo Organic Extra Virgin Olive Oil','ml',500.00,'10:13',3);
INSERT INTO selected VALUES(32,'Crema Spalmabile al Pistacchio','g',270.00,'12:27',0);
INSERT INTO selected VALUES(32,'Pistachio Cream','g',200.00,'12:28',0);
INSERT INTO selected VALUES(49,'Spalmabile al Cioccolato Fondente','g',270.00,'14:54',1);
INSERT INTO selected VALUES(24,'strawberry extra marmelade','g',340.00,'19:44',0);
INSERT INTO selected VALUES(50,'Cocoa & Hazelnut Cream','g',200.00,'02:04',1);
INSERT INTO selected VALUES(4,'Organic Extra Virgin Olive Oil','ml',500.00,'23:57',3);
INSERT INTO selected VALUES(19,'Crema di Marroni','g',350.00,'18:43',1);
INSERT INTO selected VALUES(1,'Primo Organic Extra Virgin Olive Oil','ml',500.00,'00:27',2);
INSERT INTO selected VALUES(2,'Balsamic Vinegar Glaze','ml',250.00,'10:05',3);
INSERT INTO selected VALUES(49,'Borlotti Beans','g',400.00,'14:54',0);
INSERT INTO selected VALUES(35,'Primo Organic Extra Virgin Olive Oil','ml',500.00,'23:11',3);
INSERT INTO selected VALUES(5,'Extra Virgin Nocellara Olive Oil','ml',750.00,'16:43',0);
INSERT INTO selected VALUES(39,'Balsamic Vinegar Glaze','ml',250.00,'01:20',1);
INSERT INTO selected VALUES(40,'Gianduja Cream','g',380.00,'18:15',0);
INSERT INTO selected VALUES(37,'Gianduja Cream','g',380.00,'23:49',0);
INSERT INTO selected VALUES(36,'Aceto Modena 2 medaglie','ml',250.00,'14:22',3);
INSERT INTO selected VALUES(10,'Pistachio Cream','g',200.00,'19:34',1);
INSERT INTO selected VALUES(9,'Spalmabile al Cioccolato Fondente','g',270.00,'19:52',0);
INSERT INTO selected VALUES(20,'strawberry extra marmelade','g',340.00,'18:37',0);
INSERT INTO selected VALUES(14,'Crema Spalmabile al Pistacchio','g',270.00,'05:22',2);
INSERT INTO selected VALUES(36,'Extra Virgin Nocellara Olive Oil','ml',750.00,'14:22',0);
INSERT INTO selected VALUES(10,'Capers in Sea Salt','g',200.00,'19:38',2);
INSERT INTO selected VALUES(15,'Roast Meat Ragù','g',190.00,'09:44',2);
INSERT INTO selected VALUES(38,'Borlotti Beans','g',400.00,'07:33',1);
INSERT INTO selected VALUES(19,'Traditional Bolognese Ragù','g',180.00,'18:46',0);
INSERT INTO selected VALUES(16,'Crema al Limone','g',200.00,'16:50',0);
INSERT INTO selected VALUES(33,'strawberry extra marmelade','g',340.00,'06:26',3);
INSERT INTO selected VALUES(18,'Pistachio Pesto','g',190.00,'15:42',1);
INSERT INTO selected VALUES(17,'Extra Virgin Nocellara Olive Oil','ml',750.00,'14:52',3);
INSERT INTO selected VALUES(34,'Capers in Sea Salt','g',500.00,'21:26',0);
INSERT INTO selected VALUES(1,'Organic Tomato and Basil Sauce','g',340.00,'00:24',0);
INSERT INTO selected VALUES(29,'Spalmabile al Cioccolato Fondente','g',270.00,'04:28',3);
INSERT INTO selected VALUES(23,'Spalmabile alla Mandorla','g',270.00,'17:09',2);
INSERT INTO selected VALUES(18,'Pistachio Cream','g',150.00,'15:41',2);
INSERT INTO selected VALUES(33,'Crema al Limone','g',200.00,'06:26',1);
INSERT INTO selected VALUES(14,'Borlotti Beans','g',400.00,'05:21',0);
INSERT INTO selected VALUES(35,'Burro di Arachidi','g',270.00,'23:11',2);
INSERT INTO selected VALUES(12,'Spalmabile alla Mandorla','g',270.00,'06:53',1);
INSERT INTO selected VALUES(14,'Spalmabile al Cioccolato Fondente','g',270.00,'05:17',0);
INSERT INTO selected VALUES(33,'Cremosa Gianduia','g',300.00,'06:31',1);
INSERT INTO selected VALUES(12,'Capers in Sea Salt','g',500.00,'06:53',3);
INSERT INTO selected VALUES(5,'Crema Spalmabile al Pistacchio','g',270.00,'16:42',3);
INSERT INTO selected VALUES(45,'Pistachio Cream','g',150.00,'17:23',1);
INSERT INTO selected VALUES(41,'Spalmabile alla Gianduia','g',270.00,'21:46',3);
INSERT INTO selected VALUES(46,'Borlotti Beans','g',400.00,'22:19',0);
