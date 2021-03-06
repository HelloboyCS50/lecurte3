# Date : 05 - 04 - 21

import os

from flask import Flask , render_template , request
from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session , sessionmaker

app = Flask(__name__)

engine = create_engine("postgresql://postgres:1234@localhost:5432/postgres")
db = scoped_session(sessionmaker(bind = engine))


@app.route('/')
def index():

	flights = db.execute('SELECT * FROM flights').fetchall()
	return render_template('index.html' , flights = flights)

@app.route('/book' , methods = ['POST'])
def book():

	'''Book a Flight'''


	# Get form information

	name = request.form.get('name')

	try:
		flight_id = int(request.form.get('flight_id'))

	except ValueError:
		return render_template('error.html', message = 'Invaid Flight Number !')


	# Make sure the flight exiest..

	if db.execute('SELECT * FROM flights WHERE id = :id' , {'id' : flight_id}).rowcount == 0:
		return render_template('error.html', message = 'No such Flight with that id!')

	else:

		db.execute('INSERT INTO passengers (name , flight_id) VALUES (:name , :flight_id)',
			{"name" : name , "flight_id" : flight_id})

	db.commit()
	return render_template('success.html')









































































































