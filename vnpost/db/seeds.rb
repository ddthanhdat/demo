# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
unless User.exists?(email: "admin@vnpost.com")
	User.create!(email: "admin@vnpost.com", password: "password", admin: true)
	
end

unless User.exists?(email: "giaodichvien@vnpost.com")
	User.create!(email: "giaodichvien@vnpost.com", password: "password")
	
end