
# Day : 1
# Date : 01 - 04 - 21

# # Collection Data in My Database

# import os
# from sqlalchemy import create_engine
# from sqlalchemy.orm import scoped_session, sessionmaker

# engine = create_engine("postgresql://postgres:1234@localhost:5432/postgres")
# db = scoped_session(sessionmaker(bind=engine))

# def main():
#     flights = db.execute("SELECT origin, destination, duration FROM flights").fetchall()
#     for flight in flights:
#         print(f"{flight.origin} to {flight.destination}, {flight.duration} minutes.")

# if __name__ == "__main__":
#     main()




# Try again by me 

# import os
# from sqlalchemy import create_engine
# from sqlalchemy.orm import scoped_session , sessionmaker


# engine = create_engine('postgresql://postgres:1234@localhost:5432/postgres')
# db = scoped_session(sessionmaker(bind=engine))


# def main():
# 	flights = db.execute('SELECT origin , destination , duration FROM flights').fetchall()
# 	for flight in flights:
# 		print(f'{flight.origin} to {flight.destination} , {flight.duration} minutes')



# if __name__ == '__main__':
# 	main()


# Try again

# import os

# from sqlalchemy import create_engine
# from sqlalchemy.orm import scoped_session , sessionmaker

# engine = create_engine('postgresql://postgres:1234@localhost:5432/postgres')
# db = scoped_session(sessionmaker(bind = engine))

# def main():
# 	flights = db.execute('SELECT origin , destination , duration FROM flights').fetchall()
# 	for flight in flights:
# 		print(f'{flight.origin} to {flight.destination} , {flight.duration} minutes')



# if __name__ == '__main__':
# 	main()


# Try again 

# import os

# from sqlalchemy import create_engine
# from sqlalchemy.orm import scoped_session , sessionmaker

# engine = create_engine('postgresql://postgres:1234@localhost:5432/postgres')
# db = scoped_session(sessionmaker(bind= engine))

# def main():
# 	flights = db.execute('SELECT origin , destination , duration FROM flights').fetchall()
# 	for flight in flights:
# 		print(f'{flight.origin} to {flight.destination} , {flight.duration} minutes')


# if __name__ == '__main__':
# 	main()


# Try again

# import os

# from sqlalchemy import create_engine
# from sqlalchemy.orm import scoped_session , sessionmaker

# engine = create_engine('postgresql://postgres:1234@localhost:5432/postgres')
# db = scoped_session(sessionmaker(bind = engine))

# def main():
# 	flights = db.execute('SELECT origin , destination , duration FROM flights').fetchall()
# 	for flight in flights:
# 		print(f'{flight.origin} to {flight.destination} , {flight.duration} minutes')



# if __name__ == '__main__':
# 	main()



# Day : 2
# Date : 02 - 04 - 21



# Practice

# import os 

# from sqlalchemy import create_engine
# from sqlalchemy.orm import scoped_session , sessionmaker

# engine = create_engine('postgresql://postgres:1234@localhost:5432/postgres')
# db = scoped_session(sessionmaker(bind=engine))


# def main():
# 	flights = db.execute('SELECT origin , destination , duration FROM flights ').fetchall()
# 	for flight in flights:
# 		print(f'{flight.origin} to {flight.destination} less {flight.duration} minutes')



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
	flights = db.execute('SELECT origin , destination , duration FROM flights').fetchall()
	for flight in flights:
		print(f'Flight {flight.origin} to { flight.destination} less {flight.duration} minutes')


if __name__ == '__main__':
	main()






















