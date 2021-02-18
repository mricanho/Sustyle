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
tom = User.create(name: "Tom", email: "tom@gmail.com", password: "123456")

