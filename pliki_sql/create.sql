CREATE TABLE uzytkownik_aplikacji (
	uzytkownik_aplikacji_id SERIAL,
	login varchar NOT NULL,
	haslo varchar NOT NULL,
	saldo integer NOT NULL,
	is_admin boolean NOT NULL,
	CONSTRAINT uzytkownik_aplikacji_pk PRIMARY KEY(uzytkownik_aplikacji_id)
);

CREATE TABLE pasazer (
	pasazer_id SERIAL,
	uzytkownik_aplikacji_id integer NOT NULL,
	imie varchar NOT NULL,
	nazwisko varchar NOT NULL,
	wiek integer NOT NULL,
	CONSTRAINT pasazer_pk PRIMARY KEY(pasazer_id),
	CONSTRAINT uzytkownik_aplikacji_fk FOREIGN KEY(uzytkownik_aplikacji_id) REFERENCES uzytkownik_aplikacji(uzytkownik_aplikacji_id)
);

CREATE TABLE majtek (
	majtek_id SERIAL,
	imie varchar NOT NULL,
	nazwisko varchar NOT NULL,
	wiek integer NOT NULL,
	CONSTRAINT majtek_pk PRIMARY KEY(majtek_id)
);

CREATE TABLE kapitan (
	kapitan_id SERIAL,
	imie varchar NOT NULL,
	nazwisko varchar NOT NULL,
	wiek integer NOT NULL,
	lata_doswiadczenia integer NOT NULL,
	CONSTRAINT kapitan_pk PRIMARY KEY(kapitan_id)
);

CREATE TABLE port (
	port_id SERIAL,
	nazwa varchar NOT NULL,
	kraj varchar NOT NULL,
	CONSTRAINT port_pk PRIMARY KEY(port_id)
);

CREATE TABLE obsluga_portu (
	obsluga_portu_id SERIAL,
	port_id integer NOT NULL,
	imie varchar NOT NULL,
	nazwisko varchar NOT NULL,
	wiek integer NOT NULL,
	stanowisko varchar NOT NULL,
	CONSTRAINT obsluga_portu_pk PRIMARY KEY(obsluga_portu_id),
	CONSTRAINT port_fk FOREIGN KEY(port_id) REFERENCES port(port_id)
);

CREATE TABLE statek (
	statek_id SERIAL,
	model varchar NOT NULL,
	rok_produkcji DATE NOT NULL,
	kraj_produkcji varchar NOT NULL,
	CONSTRAINT statek_pk PRIMARY KEY(statek_id)
);

CREATE TABLE rejs (
	rejs_id SERIAL,
	poczatek_rejsu_id integer NOT NULL,
	koniec_rejsu_id integer NOT NULL,
	kapitan1_id integer NOT NULL,
	kapitan2_id integer NOT NULL,
	statek_id integer NOT NULL,
	czas_poczatku_rejsu DATE NOT NULL,
	czas_konca_rejsu DATE NOT NULL,
	koszt integer NOT NULL,
	CONSTRAINT rejs_pk PRIMARY KEY(rejs_id),
	CONSTRAINT poczatek_rejsu_pk FOREIGN KEY(poczatek_rejsu_id) REFERENCES port(port_id),
	CONSTRAINT koniec_rejsu_pk FOREIGN KEY(koniec_rejsu_id) REFERENCES port(port_id),
	CONSTRAINT kapitan1_fk FOREIGN KEY(kapitan1_id) REFERENCES kapitan(kapitan_id),
	CONSTRAINT kapitan2_fk FOREIGN KEY(kapitan2_id) REFERENCES kapitan(kapitan_id),
	CONSTRAINT statek_fk FOREIGN KEY(statek_id) REFERENCES statek(statek_id)
);

CREATE TABLE pasazer_w_podrozy(
	pasazer_w_podrozy_id SERIAL,
	rejs_id INTEGER NOT NULL,
	pasazer_id INTEGER NOT NULL,
	CONSTRAINT pasazer_w_podrozy_pk PRIMARY KEY(pasazer_w_podrozy_id),
	CONSTRAINT pasazer_w_podrozy_rejs_fk FOREIGN KEY(rejs_id) REFERENCES rejs(rejs_id),
	CONSTRAINT pasazer_w_podrozy_pasazer_fk FOREIGN KEY(pasazer_id) REFERENCES pasazer(pasazer_id)
);

CREATE TABLE majtek_w_podrozy(
	rejs_id INTEGER NOT NULL,
	majtek_id INTEGER NOT NULL,
	CONSTRAINT majtek_w_podrozy_pk PRIMARY KEY(rejs_id, majtek_id),
	CONSTRAINT majtek_w_podrozy_resj_fk FOREIGN KEY(rejs_id) REFERENCES rejs(rejs_id),
	CONSTRAINT majtek_w_podrozy_majtek_fk FOREIGN KEY(majtek_id) REFERENCES majtek(majtek_id)
);

CREATE TABLE bagaz (
	bagaz_id SERIAL,
	pasazer_w_podrozy_id integer NOT NULL,
	waga integer NOT NULL,
	CONSTRAINT bagaz_pk PRIMARY KEY(bagaz_id),
	CONSTRAINT pasazer_w_podrozy_fk FOREIGN KEY(pasazer_w_podrozy_id) REFERENCES pasazer_w_podrozy(pasazer_w_podrozy_id)
);

CREATE TABLE przedmiot (
	przedmiot_id SERIAL,
	bagaz_id integer NOT NULL,
	waga integer NOT NULL,
	nazwa varchar NOT NULL,
	CONSTRAINT przedmiot_pk PRIMARY KEY(przedmiot_id),
	CONSTRAINT bagaz_fk FOREIGN KEY(bagaz_id) REFERENCES bagaz(bagaz_id)
);
