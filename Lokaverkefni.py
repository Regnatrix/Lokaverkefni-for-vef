#Sandra Dögg Kristmundsdóttir
#24.11.17
import bottle
from bottle import *
import  pymysql.cursors
from beaker.middleware import SessionMiddleware
import pymysql


session_opts = {'session.type': 'file',
                'session.cookie_expires': 300,
                'session.data_dir': './data',
                'session.auto': True}

Lokaverkefni = SessionMiddleware(session_opts)



@route("/nyskraningarsida")
def nyskraningarsida():
    return template("nyskraning.tpl")


@post("/nyskraning")
def nyskraning():
    u = request.forms.get('user')
    p = request.forms.get('pass')
    connection = pymysql.connect (host='tsuts.tskoli.is',
                                  port=3306, user='1105922489',
                                  passwd='mypassword',
                                  db='1105922489_lokaverkefniveffor')

    cur = connection.cursor()
    cur.execute ("SELECT count(*) FROM user where user=%s",(u))
    result = cursor.fetchone()

    print(result)

    if result[0] == 0:
        cur.execute ("INSERT INTO user Values(%s,%s)",(u, p))
        connection.commit ()
        cur.close ()
        return u, "Notandi hefur verið stofnaður!"
    else:
        return u, "Notandi er nú þegar til"

    return template ( "leynisida.tpl", uttak=uttak )

@get("/")
def innskraning():
    return template("innskraning.tpl")

@post("/athuga")
def athuga():
    connection = pymysql.connect (host='tsuts.tskoli.is', port=3306, user='1105922489', passwd='mypassword', db='1105922489_lokaverkefniveffor')
    username = request.forms.get("username")
    password = str(request.forms.get("password"))
    with connection.cursor () as cursor:
        sql = "SELECT pass FROM user WHERE user = '" + username + "'"
        cursor.execute ( sql )
        result = cursor.fetchone ()
        if result:
            print(result[0])
            print(password)
            if str(result[0]) == str(password):
                response.set_cookie ("account", username, secret=password)
                return template("leynisida.tpl")
            else:
                uttak = "Rangt lykilorð"
        else:
            uttak = "Notandinn er ekki til"
    connection.close ()
    if uttak == "Rangt lykilorð":
        return template ( "buinnadskrainn.tpl", uttak=uttak )
    elif uttak == "Notandinn er ekki til":
        return template ( "buinnadskrainn.tpl", uttak=uttak )


@route("/utskra")
def utskraning():
    response.set_cookie ("account", "", expires=0)
    return template ("index.tpl")

@route("/twitch")
def twitch():
    return template("twitch.tpl")

@route("/youtube")
def youtube():
    return template("youtube.tpl")

@route("/ummig")
def ummig():
    return template("ummig.tpl")

#WoW Sölusíðu vörulisti
vorulisti = [{"pid": 1, "name": "Amalgam of Destruction", "price": 15000},
            {"pid": 2, "name": "Elekk Plushie", "price": 10000},
            {"pid": 3, "name": "Corrupted Ashbringer", "price": 20000},
            {"pid": 4, "name": "Ashbringer", "price": 25000},
            {"pid": 5, "name": "Astral Cloud Serpent", "price": 150000},
            {"pid": 6, "name": "Invincible", "price": 180000}
            ]

@route("/wowsolusida")
def wowsolusida():
    #fá inn vörulistan
    return template("wowsolusida.tpl", products=vorulisti)

#karfa fyrir solusiduna
@route("/wowcart")
def wowcart():
    session = bottle.request.environ.get('beaker.session')
    karfa = []

    # lesum úr sessions þær vörur sem notandi hefur valið í körfu
    if session.get('1'):
        Amalgam_of_Destruction = session.get('1')
        karfa.append(Amalgam_of_Destruction)

    if session.get('2'):
        Elekk_Plushie = session.get('2')
        karfa.append(Elekk_Plushie)

    if session.get('3'):
        Corrupted_Ashbringer = session.get('3')
        karfa.append(Corrupted_Ashbringer)

    if session.get('4'):
        Ashbringer = session.get('4')
        karfa.append(Ashbringer)

    if session.get ('5'):
        Astral_Cloud_Serpent = session.get ( '5' )
        karfa.append (Astral_Cloud_Serpent)

    if session.get('6'):
        Invincible = session.get('6')
        karfa.append(Invincible)


    return template("wowcart.tpl", karfa = karfa)

#til að bæta vorum í cart
@route("/wowcart/add/<id:int>")

def add_to_wowcart(id):
    if id == 1:
        session =  bottle.request.environ.get("beaker.sessions")
        session["1"] = "Amalgam of Destruction"
        session.save()
        return redirect("/wowcart")
    if id == 2:
        session = bottle.request.environ.get("beaker.sessions")
        session[str(id)] = vorulisti[id - 1]["name"]
        session.save()
        return redirect("/wowcart")
    if id == 3:
        session = bottle.request.environ.get ("beaker.sessions")
        session[str(id)] = vorulisti[id - 1]["name"]
        session.save()
        return redirect ("/wowcart")
    if id == 4:
        session = bottle.request.environ.get ("beaker.sessions")
        session[str(id)] = vorulisti[id - 1]["name"]
        session.save()
        return redirect ("/wowcart")
    if id == 5:
        session = bottle.request.environ.get ("beaker.sessions")
        session[str(id)] = vorulisti[id - 1]["name"]
        session.save()
        return redirect ("/wowcart")
    if id == 6:
        session = bottle.request.environ.get ("beaker.sessions")
        session[str(id)] = vorulisti[id - 1]["name"]
        session.save()
        return redirect ("/wowcart")
    else:
        return redirect("/wowsolusida")

@route("/wowcart/remove")
def remove_from_wowcart():
    session = bottle.request.environ.get("beaker.session")
    session.delete()
    return redirect("/wowcart")

@route('/static/<skra>')
def static_skrar(skra):
    return static_file(skra, root='./public/')


@get("/messages")
def messages():
  return template("list.html", messages=result)

@route("/submit_message", methods=["POST"])
def submit_message():
  message = {
    "body": request.form["message"],
    "who": request.form["who"]
  }
  post("/messages", message)
  return redirect(url_for("messages"))

run()

