# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#a = Author.create(name: "Orson Scott Card" )
#b = Book.new( title: "Ender’s Game", year: 1985 )
#c= User.new(name: "Bob",email: "bob@bob.com")
#d= Rating.new(rating: 5)
#b.author = a
#c.rating = d
#b.rating = d
#b.save # commit to database
e = Author.create(name: "Orson Scott Card" )
i = Book.new( title: "Ender’s Game", year: 1985 )
i.author = e # Enders game and author 
i.save

f = Author.create(name: "Suzanne Collins" )
g = Author.create(name: "George Orwell" )
h = Author.create(name: "Mark Twain" )

e.save
f.save
g.save
h.save

#create books


j = Book.new( title: "The Hunger Games", year: 2008 )
j.author = f # Hungergames and author
j.save

k = Book.new( title: "1984", year: 1949 )
k.author = g # 1984 and author 
k.save

l = Book.new( title: "Catching Fire", year: 2009 )
l.author = f # Catching fire and author
l.save

m = User.create(name: "Bob",email: "bob@bob.com" )
n = User.create(name: "Mary",email: "mary@mary.com" )
o = User.create(name: "Sue",email: "sue@sue.com" )
p = User.create(name: "Fred",email: "fred@fred.com" )

q = Rating.create(rating: 5 ) #bobs rating for endersgame
q.book_id = i.id
q.user_id = m.id
q.save

r = Rating.new(rating: -3 ) #bobs rating for 1984
r.book_id = k.id
r.user_id = m.id
r.save

s = Rating.new(rating: 3 ) #Marys rating for catching fire 
s.book_id = l.id
s.user_id = n.id
s.save

t = Rating.new(rating: 5 ) #Marys rating for 1984
t.book_id = k.id
t.user_id = n.id
t.save

u = Rating.new(rating: 5 ) #Sues rating for hungergames
u.book_id = j.id
u.user_id = o.id
u.save

w = Readinglist.new(name: "May the odds be in my favor" )
w.user_id = m.id
w.save

x = Readinglist.new(name: "Sue’s Favorite" )
x.user_id = p.id
x.save

y = Readinglist.new(name: "Gotta Read")
y.user_id = o.id
y.save


#Adding books 

w.books << j
w.books << l
w.save

x.books << k
x.books << i
x.save

y.books << j
y.save

#i.ratings = q # bobs rating of endersgame 

#i.save

#m.ratings = q # endersgame rating by bob

#m.save

#k.ratings = r # bobs rating for 1984

#k.save

#m.ratings = r # 1984 rating by bob 

#m.save

#l.ratings = s # Marys rating for catching fire

#l.save

#n.ratings = s # Catching fires rating by mary 

#n.save

#k.ratings = t # Marys rating for 1984 

#k.save

#n.ratings = t # 1984 rating by mary

#n.save

#j.ratings = u # Sues rating for hungergames

#j.save

#o.ratings = u # Hungergames rating by sue

#o.save

#w.books << [j,l]

#w.save

#x.books << [k,i]

#x.save

#y.books << [j]

#y.save




#i.save
#j.save
#k.save
#l.save
#m.save
#n.save
#o.save
#p.save
#e.save
#f.save
#g.save
#h.save
#q.save
#r.save
#s.save
#t.save
#u.save
#w.save
#x.save
#y.save