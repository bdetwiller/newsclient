# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "Dan", password: "123")
User.create(username: "Bryant", password: "123")

Post.create(title: "App Academy", link: "www.appacademy.io", user_id: 1)
Post.create(title: "New Search Engine", link: "www.google.com", user_id: 1)

Comment.create(body: "Great find", post_id: 2, user_id: 2)
