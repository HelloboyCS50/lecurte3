# Day : 1
# Date : 01 - 04 - 21

# import os 
# import csv

# from sqlalchemy import create_engine
# from sqlalchemy.orm import scoped_session , sessionmaker


# engine = create_engine("postgresql://postgres:1234@localhost:5432/postgres")
# db = scoped_session(sessionmaker(bind = engine))


# def main():
# 	f = open('flights.csv')
# 	reader = csv.reader(f)

# 	for origin , destination , duration in reader:
# 		db.execute("INSERT INTO flights(origin , destination , duration) VALUES (:origin , :destination , :duration)",
# 			{"origin" : origin , "destination" : destination , "duration" : duration})
# 		print(f'Added flight from {origin} to {destination} lasting {duration} minute')
# 	db.commit() # This means save the all change of my Database..


# if __name__ == '__main__':
# 	main()


# VALUES (:origin , :destination , :duration) => All item in VALUES there called placeholder



# Try again 

# import os
# import csv

# from sqlalchemy import create_engine
# from sqlalchemy.orm import scoped_session , sessionmaker

# engine = create_engine('postgresql://postgres:1234@localhost:5432/postgres')
# db = scoped_session(sessionmaker(bind = engine))


# def main():
# 	f = open('flights.csv')
# 	reader = csv.reader(f)

# 	for origin , destination , duration in reader:
# 		db.execute('INSERT INTO flights(origin , destination , duration) VALUES(:origin , :destination , :duration)',
# 			{"origin" : origin , "destination" : destination , "duration" : duration})

		
# 		print(f'Added origin from {origin} to {destination} less {duration} minute')

# 	db.commit()


# if __name__ == '__main__':
# 	main()




# Try again


# import os
# import csv

# from sqlalchemy import create_engine 
# from sqlalchemy.orm import scoped_session , sessionmaker

# engine = create_engine("postgresql://postgres:1234@localhost:5432/postgres")
# db = scoped_session(sessionmaker(bind = engine))

# def main():
# 	f = open('flights.csv')
# 	reader = csv.reader(f)
# 	for origin , destination , duration in reader:
# 		db.execute('INSERT INTO flights(origin , destination , duration) VALUES(:origin , :destination , :duration)',
# 			{"origin" : origin , "destination" : destination , "duration" : duration})
# 		print(f'Added flight from{origin} to {destination} less {duration} minute')
# 	db.commit()


# if __name__ == '__main__':
# 	main()

# Day : 2
# Date : 02 - 04 - 21



# import os
# import csv

# from sqlalchemy import create_engine
# from sqlalchemy.orm import scoped_session , sessionmaker

# engine = create_engine('postgresql://postgres:1234@localhost:5432/postgres')
# db = scoped_session(sessionmaker(bind = engine))

# def main():
# 	f = open('flights.csv')
# 	reader = csv.reader(f)
# 	for origin , destination , duration in reader:
# 		db.execute('INSERT INTO flights(origin , destination , duration) VALUES(:origin , :destination , :duration)',
# 			{"origin" : origin , "destination" : destination , "duration" : duration})
# 		print(f'Added flight {origin} to {destination} less time {duration} minute')
# 	db.commit()



# if __name__ == '__main__':
# 	main()
































































































































































