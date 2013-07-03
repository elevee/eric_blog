# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
puts "creating shiznit"
Post.create(title: "Post 1 and I'm not done.", body: "Ayyyyyyy this is post 1 yall", author: "The Iron Sheik")
Post.create(title: "Post 2 how you do?", body: "Ayyyyyyy this is post 2 yall", author: "Ass Dan")
Post.create(title: "Post 3 yippee", body: "Ayyyyyyy this is post 3 yall", author: "Charles")
puts "done"
