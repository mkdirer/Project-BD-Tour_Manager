INSERT INTO uzytkownik_aplikacji (login, haslo, saldo, is_admin) VALUES ('admin', 'qwerty', 900, true);
INSERT INTO uzytkownik_aplikacji (login, haslo, saldo, is_admin) VALUES ('luke', 'rejs', 600, false);
INSERT INTO uzytkownik_aplikacji (login, haslo, saldo, is_admin) VALUES ('777krawczyk777', '666krzysztof', 650, false);

INSERT INTO majtek (imie, nazwisko, wiek) VALUES ('Tomasz', 'Zacki', 32);
INSERT INTO majtek (imie, nazwisko, wiek) VALUES ('Sebastian', 'Kwas', 26);
INSERT INTO majtek (imie, nazwisko, wiek) VALUES ('Magdalena', 'Nowak', 23);
INSERT INTO majtek (imie, nazwisko, wiek) VALUES ('Patryk', 'Kwiat', 21);
INSERT INTO majtek (imie, nazwisko, wiek) VALUES ('Jakub', 'Kisielewski', 34);

INSERT INTO kapitan (imie, nazwisko, wiek, lata_doswiadczenia) VALUES ('Michal', 'Rybak', 45, 12);
INSERT INTO kapitan (imie, nazwisko, wiek, lata_doswiadczenia) VALUES ('Marian', 'Fac', 34, 8);
INSERT INTO kapitan (imie, nazwisko, wiek, lata_doswiadczenia) VALUES ('Fryderyk', 'Sikorski', 43, 15);
INSERT INTO kapitan (imie, nazwisko, wiek, lata_doswiadczenia) VALUES ('Leszek', 'Fajner', 56, 23);
INSERT INTO port (nazwa, kraj) VALUES ('Tallin', 'Estonia'); 
INSERT INTO port (nazwa, kraj) VALUES ('Helsinki', 'Finlandia'); 
INSERT INTO port (nazwa, kraj) VALUES ('Sztokholm', 'Szwecja'); 
INSERT INTO port (nazwa, kraj) VALUES ('Gdynia', 'Polska'); 
INSERT INTO port (nazwa, kraj) VALUES ('Kopenhaga', 'Dania'); 

INSERT INTO obsluga_portu (port_id, imie, nazwisko, wiek, stanowisko) VALUES (1, 'Aado', 'Tamm', 23, 'Rozładowywacz bagażu');
INSERT INTO obsluga_portu (port_id, imie, nazwisko, wiek, stanowisko) VALUES (1, 'Edgar', 'Saar', 54, 'Rozładowywacz bagażu');
INSERT INTO obsluga_portu (port_id, imie, nazwisko, wiek, stanowisko) VALUES (1, 'Gaida', 'Sepp', 33, 'Kontroler');
INSERT INTO obsluga_portu (port_id, imie, nazwisko, wiek, stanowisko) VALUES (2, 'Erik', 'Nilsson', 21, 'Rozładowywacz bagażu');
INSERT INTO obsluga_portu (port_id, imie, nazwisko, wiek, stanowisko) VALUES (2, 'Matti', 'Virtanen', 43, 'Kontroler');
INSERT INTO obsluga_portu (port_id, imie, nazwisko, wiek, stanowisko) VALUES (3, 'Andersen', 'Jensen', 65, 'Rozładowywacz bagażu');
INSERT INTO obsluga_portu (port_id, imie, nazwisko, wiek, stanowisko) VALUES (3, 'Kristian', 'Nielsen', 32, 'Kontroler');
INSERT INTO obsluga_portu (port_id, imie, nazwisko, wiek, stanowisko) VALUES (4, 'Igor', 'Michalak', 22, 'Rozładowywacz bagażu');
INSERT INTO obsluga_portu (port_id, imie, nazwisko, wiek, stanowisko) VALUES (5, 'Immo', 'Korhonen', 46, 'Rozładowywacz bagażu');

INSERT INTO pasazer (uzytkownik_aplikacji_id, imie, nazwisko, wiek) VALUES (2, 'Tomasz', 'Jefferson', 29);
INSERT INTO pasazer (uzytkownik_aplikacji_id, imie, nazwisko, wiek) VALUES (2, 'Aleksander', 'Hamilton', 64);
INSERT INTO pasazer (uzytkownik_aplikacji_id, imie, nazwisko, wiek) VALUES (3, 'Kinga', 'Deron', 34);
INSERT INTO pasazer (uzytkownik_aplikacji_id, imie, nazwisko, wiek) VALUES (3, 'Luke', 'Moren', 59);
INSERT INTO pasazer (uzytkownik_aplikacji_id, imie, nazwisko, wiek) VALUES (3, 'Kamil', 'Slmin', 31);
INSERT INTO pasazer (uzytkownik_aplikacji_id, imie, nazwisko, wiek) VALUES (3, 'Mariusz', 'Pudzian', 43);

INSERT INTO statek (model, rok_produkcji, kraj_produkcji) VALUES ('Revell 05198', '2012-05-26', 'Japonia');
INSERT INTO statek (model, rok_produkcji, kraj_produkcji) VALUES ('MS Allure of the Seas', '2002-11-20', 'Norwegia');
INSERT INTO statek (model, rok_produkcji, kraj_produkcji) VALUES ('MS AIDAbella', '2007-10-19', 'Niemcy');
INSERT INTO statek (model, rok_produkcji, kraj_produkcji) VALUES ('MSC Armonia', '2000-12-01', 'Francja');

INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (1, 2, 1, 2, 1, '2022-02-14 10:30:23', '2022-02-14 13:45:03', 110);
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (3, 1, 4, 3, 2, '2022-02-22 12:34:43', '2022-02-23 08:34:45', 80);
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (1, 2, 4, 3, 3, '2022-03-01 05:23:23', '2022-03-01 9:23:45', 110);
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (2, 3, 1, 4, 4, '2022-03-06 17:23:21', '2022-03-09 19:43:12', 80);
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (3, 2, 4, 1, 4, '2022-03-11 11:23:32', '2022-03-12 08:45:12', 90);
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (2, 3, 2, 3, 3, '2022-03-14 13:15:23', '2022-03-15 09:18:43', 80);
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (3, 2, 3, 2, 3, '2022-03-21 09:15:06', '2022-03-21 12:18:43', 90);
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (2, 4, 3, 2, 1, '2022-03-26 13:54:12', '2022-03-30 06:34:43', 130);
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (4, 2, 3, 2, 1, '2022-05-11 06:12:34', '2022-05-15 23:54:00', 90);
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (2, 4, 3, 1, 4, '2022-05-17 14:12:34', '2022-05-21 19:45:45', 130);
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (2, 4, 4, 2, 1, '2022-05-23 07:15:43', '2022-05-27 14:23:56', 110);
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (4, 3, 2, 3, 4, '2022-06-12 07:05:43', '2022-06-15 23:23:45', 130);
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (4, 3, 1, 4, 1, '2022-06-14 07:05:54', '2022-06-18 14:17:23', 120); 
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (3, 1, 3, 2, 4, '2022-06-16 05:43:23', '2022-06-20 22:32:43', 120); 
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (3, 4, 4, 1, 1, '2022-06-21 07:16:32', '2022-06-25 11:03:56', 110);
INSERT INTO rejs (poczatek_rejsu_id, koniec_rejsu_id, kapitan1_id, kapitan2_id, statek_id, czas_poczatku_rejsu, czas_konca_rejsu, koszt) VALUES (4, 1, 1, 4, 1, '2022-06-30 05:23:23', '2022-07-04 12:21:56', 120);

INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (1, 5);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (2, 4);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (3, 3);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (4, 2);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (5, 2);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (6, 3);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (7, 1);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (8, 5);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (9, 5);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (10, 2);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (11, 5);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (12, 2);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (13, 5);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (14, 2);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (15, 5);
INSERT INTO majtek_w_podrozy (rejs_id, majtek_id) VALUES (16, 5);

INSERT INTO pasazer_w_podrozy (rejs_id, pasazer_id) VALUES (1, 2);
INSERT INTO pasazer_w_podrozy (rejs_id, pasazer_id) VALUES (1, 1);
INSERT INTO pasazer_w_podrozy (rejs_id, pasazer_id) VALUES (1, 3);
INSERT INTO pasazer_w_podrozy (rejs_id, pasazer_id) VALUES (2, 4);
INSERT INTO pasazer_w_podrozy (rejs_id, pasazer_id) VALUES (2, 1);
INSERT INTO pasazer_w_podrozy (rejs_id, pasazer_id) VALUES (2, 5);
INSERT INTO pasazer_w_podrozy (rejs_id, pasazer_id) VALUES (2, 2);
INSERT INTO pasazer_w_podrozy (rejs_id, pasazer_id) VALUES (3, 2);
INSERT INTO pasazer_w_podrozy (rejs_id, pasazer_id) VALUES (3, 1);
INSERT INTO pasazer_w_podrozy (rejs_id, pasazer_id) VALUES (3, 3);
INSERT INTO pasazer_w_podrozy (rejs_id, pasazer_id) VALUES (5, 4);
INSERT INTO pasazer_w_podrozy (rejs_id, pasazer_id) VALUES (7, 3);

INSERT INTO bagaz (pasazer_w_podrozy_id, waga) VALUES (1, 50);
INSERT INTO bagaz (pasazer_w_podrozy_id, waga) VALUES (2, 33);
INSERT INTO bagaz (pasazer_w_podrozy_id, waga) VALUES (3, 29);
INSERT INTO bagaz (pasazer_w_podrozy_id, waga) VALUES (4, 34);
INSERT INTO bagaz (pasazer_w_podrozy_id, waga) VALUES (5, 53);
INSERT INTO bagaz (pasazer_w_podrozy_id, waga) VALUES (6, 65);
INSERT INTO bagaz (pasazer_w_podrozy_id, waga) VALUES (7, 30);
INSERT INTO bagaz (pasazer_w_podrozy_id, waga) VALUES (8, 52);
INSERT INTO bagaz (pasazer_w_podrozy_id, waga) VALUES (9, 34);
INSERT INTO bagaz (pasazer_w_podrozy_id, waga) VALUES (10, 53);
INSERT INTO bagaz (pasazer_w_podrozy_id, waga) VALUES (11, 65);
INSERT INTO bagaz (pasazer_w_podrozy_id, waga) VALUES (12, 30);


INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (1, 1, 'Plecak');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (1, 3, 'Konsola');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (3, 2, 'Napój');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (4, 1, 'Plecak');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (4, 3, 'Laptop');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (5, 4, 'Pamiatki');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (2, 1, 'Okulary');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (6, 2, 'Konsola');
INSERT INTO przedmiot (bagaz_id, waga, nazwa) VALUES (7, 2, 'Zbawka');