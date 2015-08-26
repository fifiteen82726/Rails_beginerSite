# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.destroy_all


Post.create!([
	{title: "Happy Rails", content: "https://github.com/", author: "handsome" },
	{title: "Active record ", content: "https://www.railstutorial.org/", author: "rails-girl" }
	])


#
	