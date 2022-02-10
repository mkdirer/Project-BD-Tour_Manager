CREATE view Dane_pasazerow AS SELECT p.imie, p.nazwisko, p.wiek, czas_poczatku_rejsu, r1.nazwa AS "Miejsce początku rejsu", r1.kraj AS "Kraj początku rejsu", czas_konca_rejsu, 
r2.nazwa AS "Miejsce końca rejsu", r2.kraj AS "Kraj końca rejsu", koszt, b.waga 
FROM rejs, pasazer p, pasazer_w_podrozy, port r1, port r2, bagaz b 
WHERE rejs.rejs_id=pasazer_w_podrozy.rejs_id AND pasazer_w_podrozy.pasazer_id=p.pasazer_id AND r1.port_id=poczatek_rejsu_id AND r2.port_id=koniec_rejsu_id
AND b.pasazer_w_podrozy_id=pasazer_w_podrozy.pasazer_w_podrozy_id;

CREATE view Dane_rejsu AS SELECT (SELECT count(*) FROM rejs, pasazer_w_podrozy WHERE rejs.rejs_id=pasazer_w_podrozy.rejs_id AND rejs.rejs_id=rd.rejs_id) AS liczba_pasazerow, 
(SELECT count(*) FROM rejs, majtek_w_podrozy WHERE rejs.rejs_id=majtek_w_podrozy.rejs_id AND rejs.rejs_id=rd.rejs_id) AS liczba_majtkow, 
czas_poczatku_rejsu, r1.nazwa AS "Miejsce początku rejsu", r1.kraj AS "Kraj początku rejsu", czas_konca_rejsu, 
r2.nazwa AS "Miejsce końca rejsu", r2.kraj AS "Kraj końca rejsu", koszt, k1.nazwisko AS "Nazwisko pierwszego kapitana", k2.nazwisko AS "Nazwisko drugiego kapitana", model 
FROM rejs rd LEFT JOIN pasazer_w_podrozy ON rd.rejs_id=pasazer_w_podrozy.rejs_id, port r1, port r2, kapitan k1, kapitan k2, statek 
WHERE r1.port_id=poczatek_rejsu_id AND r2.port_id=koniec_rejsu_id AND k1.kapitan_id=kapitan1_id AND k2.kapitan_id=kapitan2_id AND rd.statek_id=statek.statek_id
GROUP BY rd.rejs_id, r1.nazwa, r1.kraj, r2.nazwa, r2.kraj, k1.nazwisko, k2.nazwisko, model
ORDER BY rd.rejs_id;

CREATE view Osoby_ktore_wydaly_ponad_300_Euro_na_bilety AS SELECT SUM(koszt), COUNT(koszt), p.imie, p.nazwisko FROM rejs LEFT JOIN pasazer_w_podrozy ON rejs.rejs_id=pasazer_w_podrozy.rejs_id, 
pasazer p WHERE p.pasazer_id=pasazer_w_podrozy.pasazer_id GROUP BY p.imie, p.nazwisko HAVING SUM(koszt) >= 300; 