import bottle
import pymongo
import bson
from bottle import get, post, request

connection = pymongo.MongoClient('localhost', 27017)
db = connection.blogdatabase
blog = db.blog

@bottle.route('/')
def index():
 	return bottle.template('index1')

@bottle.route('/add')
def index():
 	return bottle.template('add')


@post('/submit')
def submit():
	title = request.forms.get('title')
	desc = request.forms.get('desc')
	author = request.forms.get('author')
	tags = request.forms.get('tags')
	blog.insert_one({"title":title, "desc":desc, "author": author,"tags":tags})
	results =  blog.find_one()
	return bottle.template('success', result=results)

	
@bottle.route('/list')
def list():
	mylist = []
	for post in blog.find():
		mylist.append(post)
 	return bottle.template('list', result=mylist)  

	 
@bottle.route('/detail/:id')
def detail(id):
	blog_one =blog.find_one({"_id" : bson.ObjectId(oid=str(id))})
	return bottle.template('detail', result=blog_one)


@bottle.route('/edit/:id')
def edit(id):
	blog_one =blog.find_one({"_id" : bson.ObjectId(oid=str(id))})
	return bottle.template('edit', result=blog_one) 





bottle.run(host='localhost', port=8080, debug=1)