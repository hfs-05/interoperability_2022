
DROP TABLE IF EXISTS public.transaction  ; 
DROP TABLE IF EXISTS public.client  ; 
DROP TABLE IF EXISTS public.nature  ; 
DROP TABLE IF EXISTS public.type  ; 


CREATE TABLE public.nature (
	code serial4 NOT NULL,
	libelle varchar NULL,
	CONSTRAINT nature_pk PRIMARY KEY (code)
);



CREATE TABLE public."type" (
	code serial4 NOT NULL,
	libelle varchar NULL,
	CONSTRAINT nature_pk_1 PRIMARY KEY (code)
);



CREATE TABLE public.client (
	id int4 NOT NULL ,
	prenom varchar NULL,
	nom varchar NULL,
	CONSTRAINT type_1_pk PRIMARY KEY (id)
);



CREATE TABLE public."transaction" (
	id int4 NOT NULL,
	cd_type int4 NULL,
	cd_nature int4 NULL,
	id_client int4 NULL,
	"date" timestamp NULL,
	montant int8 NULL,
	CONSTRAINT transaction_pk PRIMARY KEY (id),
	CONSTRAINT transaction_fk FOREIGN KEY (id_client) REFERENCES public.client(id),
	CONSTRAINT transaction_fk_1 FOREIGN KEY (cd_type) REFERENCES public."type"(code),
	CONSTRAINT transaction_fk_2 FOREIGN KEY (cd_nature) REFERENCES public.nature(code)
);
