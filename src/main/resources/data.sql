insert into catena values ('1','Esselunga');
insert into catena values ('2','Carrefour');
insert into catena values ('3','Pam');
insert into catena values ('4','Coop');


 -- insert di prezzo da concludere (sarebbero 4(riferito a catene) prezzi per prodotto )
INSERT INTO prezzo VALUES ('1','0.99',default,'1','001');
INSERT INTO prezzo VALUES ('2','0.80',default,'2','001');
INSERT INTO prezzo VALUES ('3','0.88',default,'3','001');
INSERT INTO prezzo VALUES ('4','0.85',default,'4','001');
INSERT INTO prezzo VALUES ('5','1.60',default,'1','002');
INSERT INTO prezzo VALUES ('6','2.20',default,'2','002');
INSERT INTO prezzo VALUES ('7','1.85',default,'3','002');
INSERT INTO prezzo VALUES ('8','2.00',default,'4','002');
INSERT INTO prezzo VALUES ('9','6.99',default,'1','003');
INSERT INTO prezzo VALUES ('10','6.60',default,'2','003');
INSERT INTO prezzo VALUES ('11','6.66',default,'3','003');
INSERT INTO prezzo VALUES ('12','5.99',default,'4','003');  



-- insert di prodotto pressochè concluse manca solo da definire descrizione di ogni prodotto(4' campo attualmente null)
insert into prodotto values('001','Limoni','Monachello',null,'1.0',null,null,'3','2');
insert into prodotto values('002','Mele Golden','Melinda',null,'1.0',null,null,'2','1');
insert into prodotto values('003','Nutella','Ferrero',null,'1.0',null,null,'1','10');
insert into prodotto values('004','Albicocche','Valfrutta',null,'1.0',null,null,'4','1');
insert into prodotto values('005','Pomodori','Cirio',null,'1.0',null,null,'5','2');
insert into prodotto values('006','Marmellata ai frutti di bosco','Zuegg',null,'0.500',null,null,'6','10');
insert into prodotto values('007',' Acqua Naturale','Levissima','quantita 6x1.5','1.5',null,null,'7','3');
insert into prodotto values('008','Energy Drink','RED BULL',' lattina da 250 ml','0.250',null,null,'8','3');
insert into prodotto values('009','Latte Intero UHT','Parmalat',null,'1.0',null,null,'9','4');
insert into prodotto values('010','Formaggio','Grana Padano DOP',null,'0.400',null,null,'10','4');
insert into prodotto values('011','Petto di Pollo','AIA',null,'1.0',null,null,'11','5');
insert into prodotto values('012','Salame Milano Affettato','Rovagnati',null,'0.250',null,null,'12','5');
insert into prodotto values('013','Salmone Norvegese Trancio','Norvegia',null,'0.200',null,null,'13','6');
insert into prodotto values('014','Tonno Pinna Gialla Filetto','Rio Mare',null,'0.250',null,null,'14','6');
insert into prodotto values('015','Patatine Surgelate','Orogel',null,'0.600',null,null,'15','7');
insert into prodotto values('016','Gelato Variegato in vaschetta','Carte D Or',null,'1.00',null,null,'16','7');
insert into prodotto values('017','Spaghetti N 5','Barilla',null,'0.500',null,null,'17','8');
insert into prodotto values('018','Riso Oro Classico','Scotti',null,'1.0',null,null,'18','8');
insert into prodotto values('019','Whiskey','Jack Daniels',null,'1.0',null,null,'19','9');
insert into prodotto values('020','Birra','Moretti',null,'0.600',null,null,'20','9');
insert into prodotto values('021','Condimento insalata di riso','Sacla','2x290 g','0.290',null,null,'21','11');
insert into prodotto values('022','Mais conserva','Bonduelle',null,'0.300',null,null,'22','11');





insert into categoria values('1','Frutta');
insert into categoria values('2','Verdura');
insert into categoria values('3','Acqua e bevande');
insert into categoria values('4','Latte e derivati');
insert into categoria values('5','Carne e salumi');
insert into categoria values('6','Pesce');
insert into categoria values('7','Surgelati e gelati');
insert into categoria values('8','Pasta e riso');
insert into categoria values('9','Vino, birra e liquori');
insert into categoria values('10','Dolci');
insert into categoria values('11','Conserve e condimenti');






insert into etichetta values('1','6.3','57.5','30.9','10.6','0','0.107','539.0');   -- nutella
insert into etichetta values('2','0.300','14','0','0.200','2.29','0.100','53.0');  -- mele
insert into etichetta values('3','0.100','0.200','0','0','1.0','0.200','20.0');  -- limoni
insert into etichetta values('4','0.8','10.0','0.1','0.0','1.2','0.1','48.0');  -- albicocche
insert into etichetta values('5','1.9','0.0','0.4','0.0','4.0','1.0','48.0');  -- pomodori
insert into etichetta values('6','0.4','45.0','0.1','0.1','0.8','0.1','188.0'); -- marmellata di frutta  
insert into etichetta values('7','0.0','0.0','0.0','0.0','0.0','0.350','0.0');  -- acqua 
insert into etichetta values('8','0.3','11.0','0.1','0.0','0.0','0.8','45.0');  -- red bull
insert into etichetta values('9','3.30','4.90','0.10','0.070','0.0','0.13','143.0');  -- latte
insert into etichetta values('10','0.0','29.0','32.0','4.0','0.0','1.5','398.0');  -- formaggio
insert into etichetta values('11','31.0','0.0','3.6','1.0','0.0','0.074','165.0');  -- petto di pollo
insert into etichetta values('12','22.0','2.4','26.0','9.0','0.0','0.174','336.0');  -- salame 
insert into etichetta values('13','20.0','0.0','13.0','3.1','0.0','0.05','208.0'); -- salmone
insert into etichetta values('14','29.0','0.0','0.6','0.2','0.0','0.054','130.0'); -- tonno
insert into etichetta values('15','3.9','29.0','6.7','1.5','0.2','2.0','192.0'); -- patatine surgelate
insert into etichetta values('16','2.8','25.0','10.0','8.7','0.0','0.017','201.0'); -- gelato in vaschetta
insert into etichetta values('17','0.0','31.0','0.9','0.0','1.8','0.001','158.0');  -- spaghetti
insert into etichetta values('18','2.0','28.0','0.4','0.1','0.4','0.001','130.0'); -- riso
insert into etichetta values('19','0.0','0.0','0.0','0.0','0.0','0.0','222.0'); -- jack daniels
insert into etichetta values('20','0.4','2.8','0.0','0.0','0.0','0.001','120.0'); -- birra moretti
insert into etichetta values('21','1.0','1.2','35.0','4.0','1.9','1.5','326.0'); -- condimento insalata di riso
insert into etichetta values('22','2.9','10.8','1.9','0.5','3.8','0.040','80.0'); -- mais in scatola






INSERT INTO utente VALUES('1','admin','pass');
INSERT INTO utente VALUES('2','demo','demo');
INSERT INTO utente VALUES('3','test','test');