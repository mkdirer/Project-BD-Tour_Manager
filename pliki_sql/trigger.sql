CREATE FUNCTION dodaj_wage_do_bagazu() RETURNS TRIGGER AS $$
begin
	UPDATE bagaz SET waga = waga + new.waga where bagaz_id = new.bagaz_id;
    return new;
end;
$$LANGUAGE 'plpgsql';

CREATE TRIGGER trig_dodaj_wage_do_bagazu AFTER INSERT ON przedmiot FOR EACH ROW EXECUTE PROCEDURE dodaj_wage_do_bagazu();


CREATE FUNCTION odejmij_wage_z_bagazu() RETURNS TRIGGER AS $$
begin
	UPDATE bagaz SET waga = waga - old.waga where bagaz_id = old.bagaz_id;
    return old;
end;
$$LANGUAGE 'plpgsql';

CREATE TRIGGER trig_odejmij_wage_z_bagazu BEFORE DELETE ON przedmiot FOR EACH ROW EXECUTE PROCEDURE odejmij_wage_z_bagazu();


CREATE FUNCTION odejmij_koszty_podrozy() RETURNS TRIGGER AS $$
declare
    koszty INTEGER;
	u_id INTEGER;
begin
	SELECT koszt INTO koszty FROM rejs WHERE rejs_id=new.rejs_id;
	SELECT uzytkownik_aplikacji_id INTO u_id FROM pasazer WHERE pasazer_id=new.pasazer_id;
	UPDATE uzytkownik_aplikacji SET saldo = saldo - koszty WHERE uzytkownik_aplikacji_id = u_id;
    return new;
end;
$$LANGUAGE 'plpgsql';

CREATE TRIGGER trig_odejmij_koszty_podrozy AFTER INSERT ON pasazer_w_podrozy FOR EACH ROW EXECUTE PROCEDURE odejmij_koszty_podrozy();


CREATE FUNCTION kapitanowie_musza_byc_inni() RETURNS TRIGGER AS $$
begin
	if new.kapitan1_id = new.kapitan2_id then
		RAISE EXCEPTION 'Nie mozna dodac lotu: piloci musza byc rozni!';
	else
		return new;
	end if;
end;
$$LANGUAGE 'plpgsql';

CREATE TRIGGER trig_kapitanowie_musza_byc_inni BEFORE INSERT ON rejs FOR EACH ROW EXECUTE PROCEDURE kapitanowie_musza_byc_inni();


CREATE FUNCTION kupno_biletu_mozliwe() RETURNS TRIGGER AS $$
declare
    koszty INTEGER;
	u_id INTEGER;
	dost_saldo INTEGER;
begin
	SELECT koszt INTO koszty FROM rejs WHERE rejs_id=new.rejs_id;
	SELECT uzytkownik_aplikacji_id INTO u_id FROM pasazer WHERE pasazer_id=new.pasazer_id;
	SELECT saldo INTO dost_saldo FROM uzytkownik_aplikacji WHERE uzytkownik_aplikacji_id = u_id;
	IF dost_saldo < koszty THEN
		RAISE EXCEPTION 'Brak srodkow na koncie uzytkownika aplikacji!';
	END IF;
    return new;
end;
$$LANGUAGE 'plpgsql';

CREATE TRIGGER trig_kupno_biletu_mozliwe BEFORE INSERT ON pasazer_w_podrozy FOR EACH ROW EXECUTE PROCEDURE kupno_biletu_mozliwe();


CREATE FUNCTION usun_bagaze_pasazera() RETURNS TRIGGER AS $$
declare
	items TEXT DEFAULT '';
	rec_bagaz RECORD;
	cur_bagaz CURSOR FOR SELECT * FROM bagaz WHERE bagaz.pasazer_w_podrozy_id = old.pasazer_w_podrozy_id;
	rec_przedmiot RECORD;
begin
	OPEN cur_bagaz;
	LOOP
		FETCH cur_bagaz into rec_bagaz;
		EXIT WHEN NOT FOUND;

		for rec_przedmiot in select * from przedmiot where przedmiot.bagaz_id = rec_bagaz.bagaz_id
		LOOP
			delete from przedmiot where przedmiot.przedmiot_id = rec_przedmiot.przedmiot_id;
		END LOOP;
		delete from bagaz where bagaz.bagaz_id = rec_bagaz.bagaz_id;
	END LOOP;
	return old;
end;
$$LANGUAGE 'plpgsql';

CREATE TRIGGER trig_usun_bagaze_pasazera BEFORE DELETE ON pasazer_w_podrozy FOR EACH ROW EXECUTE PROCEDURE usun_bagaze_pasazera();