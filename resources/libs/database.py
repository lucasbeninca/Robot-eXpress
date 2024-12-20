from robot.api.deco import keyword
from pymongo import MongoClient

client = MongoClient('mongodb+srv://qa:123@cursorobotexpress.8ifnx.mongodb.net/?retryWrites=true&w=majority&appName=CursoRoboteXpress')
db = client['markdb']


@keyword('Remove user from database')
def remove_user(email):
    users = db['users']
    users.delete_many({'email': email})
    print('removing user by ' + email)
