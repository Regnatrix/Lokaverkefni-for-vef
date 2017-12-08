#Sandra Dögg Kristmundsdóttir
#24.11.17
import bottle
from bottle import run,route,redirect,request,post,template,app,response,static_file,get
from sys import argv
import  pymysql.cursors
from beaker.middleware import SessionMiddleware
import pymysql


session_opts = {'session.type': 'file',
                'session.cookie_expires': 300,
                'session.data_dir': './data',
                'session.auto': True}

app = SessionMiddleware(app(), session_opts)



@route("/nyskraningarsida")
def nyskraningarsida():
    return template("nyskraning.tpl")


@post("/nyskraning")
def nyskraning():
    connection = pymysql.connect (host='tsuts.tskoli.is', port=3306, user='1105922489', passwd='mypassword', db='1105922489_lokaverkefniveffor')

    username = (request.forms.get("username"))
    password = (request.forms.get("password"))


    with connection.cursor () as cursor:
        sql = "SELECT user, pass FROM user WHERE user = '" + username + "'"
        cursor.execute ( sql )
        result = cursor.fetchone ()
        if result:
            uttak = "Notandi er nú þegar til"
        else:
            sql = "INSERT INTO user (user, pass) VALUES ('" + username + "', '" + password + "')"
            cursor.execute ( sql )
            connection.commit ()
            uttak = "Notandi hefur verið stofnaður!"
    connection.close ()

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

@route("/heim")
def heim():
    return template("heim.tpl")


@route("/utskra")
def utskraning():
    response.set_cookie ("account", "", expires=0)
    return template ("index.tpl")

@route("/twitch")
def twitch():
    return template("twitch.tpl")

@route("/nixxiomT")
def nixxiomT():
    return template("nixxiomT.tpl")

@route("/eslcsgo")
def eslcsgo():
    return template("eslcsgo.tpl")

@route("/break")
def braek():
    return template("break.tpl")

@route("/youtube")
def youtube():
    return template("youtube.tpl")

@route("/nixxiom")
def nixxiom():
    return template("nixxiom.tpl")

@route("/markiplier")
def markiplier():
    return template("Markiplier.tpl")

@route("/slightlyI")
def slightlyI():
    return template("slightlyI.tpl")


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
@route("/cart")
def cart():
    session = bottle.request.environ.get('beaker.session')
    karfa = []

    if session.get('1'):
        vara1 = session.get('1')
        karfa.append(vara1)

    if session.get('2'):
        vara2 = session.get('2')
        karfa.append(vara2)

    if session.get('3'):
        vara3 = session.get('3')
        karfa.append(vara3)

    if session.get('4'):
        vara4 = session.get('4')
        karfa.append(vara4)

    if session.get ('5'):
        vara5 = session.get ( '5' )
        karfa.append (vara5)

    if session.get('6'):
        vara6 = session.get('6')
        karfa.append(vara6)


    return template("wowcart.tpl", karfa = karfa)


@route("/cart/add/<id:int>")
def add_to_cart(id):
    if id == 1:
        session =  request.environ.get("beaker.sessions")
        session["1"] = "Amalgam of Destruction"
        session.save()
        return redirect("/cart")
    if id == 2:
        session = request.environ.get("beaker.sessions")
        session[str(id)] = vorulisti[id - 1]["name"]
        session.save()
        return redirect("/cart")
    if id == 3:
        session = request.environ.get ("beaker.sessions")
        session[str(id)] = vorulisti[id - 1]["name"]
        session.save()
        return redirect ("/cart")
    if id == 4:
        session = request.environ.get ("beaker.sessions")
        session[str(id)] = vorulisti[id - 1]["name"]
        session.save()
        return redirect ("/cart")
    if id == 5:
        session = request.environ.get ("beaker.sessions")
        session[str(id)] = vorulisti[id - 1]["name"]
        session.save()
        return redirect ("/cart")
    if id == 6:
        session = request.environ.get ("beaker.sessions")
        session[str(id)] = vorulisti[id - 1]["name"]
        session.save()
        return redirect ("/cart")
    else:
        return redirect("/wowsolusida")

@route("/wowcart/remove")
def remove_from_wowcart():
    session = request.environ.get("beaker.session")
    session.delete()
    return redirect("/wowcart")

@route('/static/<skra>')
def static_skrar(skra):
    return static_file(skra, root='./public/')


bottle.run ( app=app, host='0.0.0.0', port=argv[ 1 ], debug=True, reloader=True )

