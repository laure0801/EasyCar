# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
Car.destroy_all

puts "bonjour"
file9 = File.open("app/assets/images/florine_avatar.jpg")

puts "creating"

file = URI.open('https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60')
file2 = URI.open("https://images.unsplash.com/photo-1493238792000-8113da705763?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
file3 = URI.open("https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
file4 = URI.open("https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
file5 = URI.open("https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
file6 = URI.open("https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
file7 = URI.open("https://images.unsplash.com/photo-1511919884226-fd3cad34687c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGNhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")
file8 = URI.open("https://images.unsplash.com/photo-1549399542-7e3f8b79c341?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")

car = Car.create(brand: "Mercedes", model: "q7", description: "Cool car", price: 50)
car.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

car2 = Car.create(brand: "BMW", model: "serie 1", description: "Super car", price: 75)
car2.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')

car3 = Car.create( brand: "KIA", model: "model 1", description: "Cool Car.", price: 125)
car3.photo.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

car4 = Car.create( brand: "Opel", model: "model 2", description: "Super car", price: 250)
car4.photo.attach(io: file4, filename: 'nes.png', content_type: 'image/png')

car5 = Car.create( brand: "Mini", model: "cooper", description: "Cool car.", price: 30)
car5.photo.attach(io: file5, filename: 'nes.png', content_type: 'image/png')

car6 = Car.create( brand: "Peugeot", model: "206", description: "Super car. ", price: 50)
car6.photo.attach(io: file6, filename: 'nes.png', content_type: 'image/png')

car7 = Car.create( brand: "Tesla", model: "3", description: "cool car", price: 45)
car7.photo.attach(io: file7, filename: 'nes.png', content_type: 'image/png')

car8 = Car.create( brand: "Toyota", model: "yaris", description: "super car", price: 100)
car8.photo.attach(io: file8, filename: 'nes.png', content_type: 'image/png')

puts "fini"
