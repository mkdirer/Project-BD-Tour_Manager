from flask_wtf import FlaskForm
from wtforms import (
    StringField,
    SubmitField,
    BooleanField,
    IntegerField,
    DateField,
)
from wtforms.validators import DataRequired, Length

class UzytkownikAplikacji(FlaskForm):
    login = StringField("Login", validators=[DataRequired()])
    haslo = StringField("Hasło", validators=[DataRequired()])
    saldo = IntegerField("Saldo", validators=[DataRequired()])
    is_admin = BooleanField("Admin", default=False)
    submit = SubmitField("Dodaj")

class Pasazer(FlaskForm):
    uzytkownik_aplikacji_id = IntegerField("Użytkownik aplikacji ID", validators=[DataRequired()])
    imie = StringField("Imię", validators=[DataRequired()])
    nazwisko = StringField("Nazwisko", validators=[DataRequired()])
    wiek = IntegerField("Wiek", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Majtek(FlaskForm):
    imie = StringField("Imię", validators=[DataRequired()])
    nazwisko = StringField("Nazwisko", validators=[DataRequired()])
    wiek = IntegerField("Wiek", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Kapitan(FlaskForm):
    imie = StringField("Imię", validators=[DataRequired()])
    nazwisko = StringField("Nazwisko", validators=[DataRequired()])
    wiek = IntegerField("Wiek", validators=[DataRequired()])
    lata_doswiadczenia = IntegerField("Lata doświadczeń", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Port(FlaskForm):
    nazwa = StringField("Nazwa", validators=[DataRequired()])
    kraj = StringField("Kraj", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class ObslugaPortu(FlaskForm):
    port_id = IntegerField("Port ID", validators=[DataRequired()])
    imie = StringField("Imię", validators=[DataRequired()])
    nazwisko = StringField("Nazwisko", validators=[DataRequired()])
    wiek = IntegerField("Wiek", validators=[DataRequired()])
    stanowisko = StringField("Stanowisko", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Statek(FlaskForm):
    model = StringField("Model", validators=[DataRequired()])
    rok_produkcji = DateField("Rok produkcji", validators=[DataRequired()])
    kraj_produkcji = StringField("Kraj produkcji", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Rejs(FlaskForm):
    poczatek_rejsu_id = IntegerField("Port startowy ID", validators=[DataRequired()])
    koniec_rejsu_id = IntegerField("Port końcowy ID", validators=[DataRequired()])
    kapitan1_id = IntegerField("Kapitan 1 ID", validators=[DataRequired()])
    kapitan2_id = IntegerField("Kapitan 2 ID", validators=[DataRequired()])
    statek_id = IntegerField("Statek ID", validators=[DataRequired()])
    czas_poczatku_rejsu = DateField("Początek podróży", validators=[DataRequired()])
    czas_konca_rejsu = DateField("Koniec podróży", validators=[DataRequired()])
    koszt = IntegerField("Koszt", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class PasazerWPodrozy(FlaskForm):
    rejs_id = IntegerField("Rejs ID", validators=[DataRequired()])
    pasazer_id = IntegerField("Pasażer ID", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class MjtekWPodrozy(FlaskForm):
    rejs_id = IntegerField("Rejs ID", validators=[DataRequired()])
    majtek_id = IntegerField("Pasażer ID", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Bagaz(FlaskForm):
    pasazer_w_podrozy_id = IntegerField("Pasażer w podróży ID", validators=[DataRequired()])
    waga = IntegerField("Waga", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Przedmiot(FlaskForm):
    bagaz_id = IntegerField("Bagaż ID", validators=[DataRequired()])
    waga = IntegerField("Waga", validators=[DataRequired()])
    nazwa = StringField("Nazwa", validators=[DataRequired()])
    submit = SubmitField("Dodaj")

class Login(FlaskForm):
    login = StringField("Login", validators=[DataRequired()])
    haslo = StringField("Hasło", validators=[DataRequired()])
    submit = SubmitField("Zaloguj się")

class Delete(FlaskForm):
    del_id = IntegerField("ID", validators=[DataRequired()])
    submit = SubmitField("Usuń rekord")