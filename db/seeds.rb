# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: "Title 1", username: "Toto", link: "www.google.com", description: "This is a post")
Post.create(title: "Title 2", username: "Dorothy", link: "www.google.com", description: "This is another post")

Comment.create(username: "Martha", body: "This is so helpful", post_id: 1)
Comment.create(username: "Bob", body: "This is less helpful", post_id: 2)
