# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: 'Fashion', priority: 1)
Category.create(name: 'Technology', priority: 2)
Category.create(name: 'Food', priority: 3)
Category.create(name: 'Energy', priority: 4)
Category.create(name: 'Economics', priority: 5)
editor = User.create(name: "Editor", email: "sustyle_editor@gmail.com", password: "123456")
tom = User.create(name: "Tom", email: "tom@gmail.com", password: "password1234")
kimberly = User.create(name: "Kimberly", email: "kim@gmail.com", password: "password1234")
mike = User.create(name: "Mike", email: "mike@gmail.com", password: "password1234")
tim = User.create(name: "Tim", email: "tim@gmail.com", password: "password1234")

Article.create(author_id:2, title: "Tesla's Cheap $25,000 Car Could Cost Just $19,000", text: "YouTuber Andy Slye optimistically explains how the upcoming cheap $25,000 Tesla could only cost $19,000, and possibly kill off the gas competition. At the beginning of the video he warns us that he is being very optimistic about all this, but it could happen if the timelines lineup. 

  He starts with explaining how Elon Musk always wanted a high volume affordable EV. In his Master Plan from way back in 2006, he outlined how he wanted a low volume expensive car (Roadster) to fund a medium volume car at lower price (Model S). Then use the money from that to fund the creation of a high volume affordable car (Model 3 and/or 2?). The tweet below gives you a good idea of what he is talking about. 
  
  ",
  image_data: "<%= @most_popular.image_url if @most_popular.image%>

