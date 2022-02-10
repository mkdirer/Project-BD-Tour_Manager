from flask import render_template, url_for, redirect, request, session, flash
from manager import app, forms
from manager import functions as fun

def get_forms():
	return {
		'uzytkownik_aplikacji': forms.UzytkownikAplikacji(),
		'pasazer': forms.Pasazer(),
		'majtek': forms.Majtek(),
		'kapitan': forms.Kapitan(),
		'port': forms.Port(),
		'obsluga_portu': forms.ObslugaPortu(),
		'statek': forms.Statek(),
		'rejs': forms.Rejs(),
		'pasazer_w_podrozy': forms.PasazerWPodrozy(),
		'majtek_w_podrozy': forms.MjtekWPodrozy(),
		'bagaz': forms.Bagaz(),
		'przedmiot': forms.Przedmiot(),
		'delete': forms.Delete()
	}

def get_views():
	return {
		'Dane_pasazerow': ['Imie', 'Nazwisko', 'Wiek', 'Początek podróży', 'Miejsce początku rejsu', 'Kraj początku rejsu',
							'Koniec podróży', 'Miejsce końca rejsu', 'Kraj końca rejsu', 'Koszt podróży', 'Waga bagażu'],
		'Dane_rejsu': ['Liczba pasażerów', 'Liczba majtków', 'Początek podróży', 'Miejsce początku rejsu', 'Kraj początku rejsu',
						'Koniec podróży', 'Miejsce konca rejsu', 'Kraj końca rejsu', 'Koszt podróży', 'Nazwisko pierwszego kapitana',
						'Nazwisko drugiego kapitana', 'Model statku'],
		'Osoby_ktore_wydaly_ponad_300_Euro_na_bilety': ['Suma wydana na bilety', 'Liczba wycieczek', 'Imie', 'Nazwisko']
	}

@app.route("/")
def home():
	return render_template("home.html", session=session)

@app.route("/login", methods=["GET", "POST"])
def login():
	form = forms.Login()
	if form.is_submitted():
		if fun.login(form):
			session["user"] = form.login.data
			return redirect("/")
		else:
			flash("Niepoprawne dane logowania")

	return render_template("login.html", session=session, form=form)

@app.route("/logout")
def logout():
	session.pop("user", None)
	return render_template("logout.html", session=session)

@app.route("/insert/<table>", methods=["GET", "POST"])
def insert(table):
	form = get_forms()[table]

	if form.is_submitted():
		fun.insert(table, form)
		return redirect(f"/raport/{table}")
	return render_template("insert.html", table=table, form=form)

@app.route("/delete/<table>", methods=["GET", "POST"])
def delete(table):
	form = get_forms()['delete']

	if form.is_submitted():
		fun.delete(table, form.del_id.data)
		return redirect(f"/raport/{table}")

	admin = False
	if 'user' in session and fun.is_admin(session["user"]):
		admin = True

	return render_template("delete.html", table=table, form=form, admin=admin)

@app.route("/raport/<table>")
def raport(table):
	form = get_forms()[table]
	return render_template("raport.html", table=table, form=form, records=fun.select(table))

@app.route("/widok/<view>")
def widok(view):
	headers = get_views()[view]
	return render_template("widok.html", view=view, headers=headers, records=fun.get_view(view))