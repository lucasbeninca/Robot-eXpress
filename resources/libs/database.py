from robot.api.deco import keyword
from pymongo import MongoClient

client = MongoClient('mongodb+srv://renubosi:3nKlZyN8xiCAlKVM@robot-user-db.o8crs.mongodb.net/?retryWrites=true&w=majority&appName=robot-user-db')
db = client['mark85db']

@keyword('Remove user from database')
def remove_user(email):
    users = db['users']
    users.delete_many({'email': email})
    print('removing user by ' + email)

@keyword('insert user from database')
def insert_user(user):
  #  doc = {
  #     'name': name,
  #      'email': email,
  #      'password': password
                
  #  }   
    
    users = db['users']
    users.insert_one(user) 
    print(user)
    