# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
fashion = Category.create(name: 'Fashion', priority: 1)
technology = Category.create(name: 'Technology', priority: 2)
food = Category.create(name: 'Food', priority: 3)
energy = Category.create(name: 'Energy', priority: 4)
economics = Category.create(name: 'Economics', priority: 5)

editor = User.create(name: "Editor", email: "sustyle_editor@gmail.com", password: "123456")
tom = User.create(name: "Tom", email: "tom@gmail.com", password: "password1234")
kimberly = User.create(name: "Kimberly", email: "kim@gmail.com", password: "password1234")
mike = User.create(name: "Mike", email: "mike@gmail.com", password: "password1234")
tim = User.create(name: "Tim", email: "tim@gmail.com", password: "password1234")

technology.articles.create(author_id:2, title: "Tesla's Cheap $25,000 Car Could Cost Just $19,000", text: "YouTuber Andy Slye optimistically explains how the upcoming cheap $25,000 Tesla could only cost $19,000, and possibly kill off the gas competition. At the beginning of the video he warns us that he is being very optimistic about all this, but it could happen if the timelines lineup. 

  He starts with explaining how Elon Musk always wanted a high volume affordable EV. In his Master Plan from way back in 2006, he outlined how he wanted a low volume expensive car (Roadster) to fund a medium volume car at lower price (Model S). Then use the money from that to fund the creation of a high volume affordable car (Model 3 and/or 2?). The tweet below gives you a good idea of what he is talking about. 
  
  ")

food.articles.create(author_id:3, title: "Pavlova made from grass, and other foods of the future", text: "Kiwi startup Leaft could be the first in the world to develop a leaf-based protein concentrate that can be used in place of a range of foods such as eggs and other proteins. And it has already passed the complex, and very Kiwi, task of being whisked into a pavlova!
  
  The scientifically developed process turns leafy crops grown in the Canterbury plains into a protein with high nutritional value that also has a lighter environmental footprint than either animal or grain-based sources of protein. 
  
  The process also produces a high-quality stock feed that has the potential to increase dairy and beef performance, while reducing their excess nitrogen. This could provide a viable option for farmers to reduce their environmental footprint.",)

