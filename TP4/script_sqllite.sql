
DROP TABLE IF EXISTS "transaction"  ; 
DROP TABLE IF EXISTS client  ; 
DROP TABLE IF EXISTS nature  ; 
DROP TABLE IF EXISTS type  ; 


CREATE TABLE nature (
	code INTEGER PRIMARY KEY,
	libelle TEXT 
);



CREATE TABLE "type" (
	code INTEGER PRIMARY KEY,
	libelle TEXT 
);



CREATE TABLE client (
	id INTEGER PRIMARY KEY,
	prenom TEXT,
	nom TEXT
);



CREATE TABLE "transaction" (
	id INTEGER PRIMARY KEY,
	cd_type INTEGER,
	cd_nature INTEGER,
	id_client INTEGER,
	"date" datetime,
	montant INTEGER 
);
