INSERT INTO t_depo (depo_kod,depo_adi,bolge,sehir,adres) VALUES
	 ('D1','Depo 1','İç Anadolu',NULL,NULL),
	 ('D2','Depo 2','Akdeniz',NULL,NULL),
	 ('D3','Depo 3','Ege',NULL,NULL);

INSERT INTO t_katalog (katalog_adi,katalog_kodu) VALUES
	 ('Katalog 1','K1'),
	 ('Katalog 2','K2'),
	 ('Katalog 3','K3');
	 
INSERT INTO t_envanter (envanter_adi,envanter_kodu,envanter_miktar,kritik_miktar,katalog_id) VALUES
	 ('H001','Somun',0,1000,1),
	 ('H002','Vida',0,1000,1),
	 ('Y002','V2 Yarı Mamü',0,200,2),
	 ('Y001','AZ2 Yarı Mamül',0,100,2),	 
	 ('SON1','Kalem',0,100,3),
	 ('SON2','Bike',0,75,3),
	 ('SON3','Mouse',0,50,3);

INSERT INTO t_depo_envanter (depo_id,envanter_id,depo_miktar) VALUES
	 (1,1,0),
	 (1,2,0),
	 (2,1,0),
	 (2,2,0),
	 (2,3,0),
	 (3,2,0),
	 (4,3,0),
	 (4,2,0),
	 (5,2,0),
	 (6,3,0),
	 (6,2,0),
	 (7,3,0),
	 (7,2,0);
