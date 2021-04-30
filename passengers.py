
# Day : 2
# Date : 02 - 04 - 21

# import os

# from sqlalchemy import create_engine
# from sqlalchemy.orm import scoped_session , sessionmaker

# engine = create_engine('postgresql://postgres:1234@localhost:5432/postgres')
# db = scoped_session(sessionmaker(bind = engine))


# def main():

# 	# List all flight

# 	flights = db.execute('SELECT id , origin , destination , duration FROM flights').fetchall()
# 	for flight in flights:
# 		print(f'flight {flight.id} : {flight.origin} to {flight.destination} {flight.duration} minute')


# 	# Promot user to choose a flight

# 	flight_id = int(input('Flight ID : '))

# 	flight = db.execute('SELECT origin , destination , duration FROM flights WHERE id = :id',
# 		{"id" : flight_id}).fetchone()

# 	# Make sure flight is Valid

# 	if flight is None:
# 		print('Error ! No such Flight here..')
# 		return

# 	else:

# 		passengers = db.execute('SELECT name FROM passengers WHERE flight_id = :flight_id',
# 			{"flight_id" : flight_id}).fetchall()


# 	print('Passengers : ')
# 	for passenger in passengers:
# 		print(passenger.name)
# 	if len(passenger) == 0:
# 		print('No Passenger Here..!')




# if __name__ == '__main__':
# 	main()


# Try again

# import os

# from sqlalchemy import create_engine
# from sqlalchemy.orm import scoped_session , sessionmaker

# engine = create_engine('postgresql://postgres:1234@localhost:5432/postgres')

# db = scoped_session(sessionmaker(bind = engine))


# def main():

# 	flights = db.execute('SELECT id , origin , destination , duration FROM flights').fetchall()
	
# 	for flight in flights:
# 		print(f'Id {flight.id} : {flight.origin} to {flight.destination} , {flight.duration} minute')


# 	flight_id = int(input('Flight ID : '))

# 	flight = db.execute('SELECT origin , destination , duration FROM flights WHERE id = :id ' ,
# 		{"id" : flight_id}).fetchone()

# 	if flight is None:
# 		print('No Flight here...!')
# 		return

# 	else:
# 		passengers = db.execute('SELECT name FROM passengers WHERE flight_id = :flight_id' ,
# 			{"flight_id" : flight_id}).fetchall()



# 	print('Passengers: ')
# 	for passenger in passengers:
# 		print(passenger.name)
# 	if len(passenger) == 0:
# 		print('NO passenger here...')


# if __name__ == '__main__':
# 	main()


# Try again

# import os

# from sqlalchemy import create_engine
# from sqlalchemy.orm import scoped_session , sessionmaker

# engine = create_engine('postgresql://postgres:1234@localhost:5432/postgres')
# db = scoped_session(sessionmaker(bind = engine))


# def main():

# 	flights = db.execute('SELECT id , origin , destination , duration FROM flights').fetchall()
# 	for flight in flights:
# 		print(f'Id {flight.id} : {flight.origin} to {flight.destination} , {flight.duration} minute')



# 	flight_id = int(input('Passengers ID : '))

# 	flight = db.execute('SELECT origin , destination , duration FROM flights WHERE id = :id',
# 		{"id" : flight_id}).fetchone()

# 	if flight is None:
# 		print('NO Flight Here..')
# 		return

# 	else:
# 		passengers = db.execute('SELECT name FROM passengers WHERE flight_id = :flight_id',
# 			{"flight_id" : flight_id}).fetchall()


# 	print('Passenger: ')

# 	for passenger in passengers:
# 		print(passenger.name)
# 	if len(passenger) == 0:
# 		print('NO passenger here...')



# if __name__ == '__main__':
# 	main()





# Day : 3
# Date : 05 - 04 - 21


import os

from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session , sessionmaker

engine = create_engine('postgresql://postgres:1234@localhost:5432/postgres')

db = scoped_session(sessionmaker(bind = engine))


def main():
	flights = db.execute('SELECT id , origin , destination , duration FROM flights').fetchall()

	for flight in flights:
		print(f'Id {flight.id} : {flight.origin} to {flight.destination}  {flight.duration} minute')


	flight_id = int(input('ID : '))

	flight = db.execute('SELECT origin , destination , duration FROM flights WHERE id = :id',
		{"id" : flight_id}).fetchone()

	if flight is None:
		print('NO Flight Here...')
		return

	else:
		passengers = db.execute('SELECT name FROM passengers WHERE flight_id = :flight_id',
			{"flight_id" : flight_id}).fetchall()


	print('Passenger : ')
	for passenger in passengers:
		print(passenger.name)
	if len(passengers) == 0:
		print('No Passenger Here....')











if __name__ == '__main__':
	main()










































































































