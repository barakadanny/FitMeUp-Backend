# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding to database initiated ...."
admin_user = User.create(username: 'skyv26', full_name: 'Aakash Verma', date_of_birth: '01/01/1990', address: 'Punjab, INDIA', email_address: 'dev.aakashv@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA')
admin_role = Role.create(role: 'admin', user: admin_user)
puts "Admin Created !!"

killy = User.create(username: 'itz_me_killy', full_name: 'Killy Quami', date_of_birth: '01/01/2000', address: 'Accra, GHANA', email_address: 'killy@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA')
user_killy = Role.create(user: killy)
puts "User 1 Created !!"

danny = User.create(username: 'yo_yo_danny', full_name: 'Danny Baraka', date_of_birth: '10/05/1995', address: 'Nairobi, KENYA', email_address: 'danny@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA')
trainer_danny = Role.create(role: 'trainer', user: danny)
puts "Trainer 1 Created !!"

justice = User.create(username: 'bajeri.justice', full_name: 'Justice Bajeri', date_of_birth: '11/11/2001', address: 'Accra, GHANA', email_address: 'justice@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA')
trainer_justice = Role.create(role: 'trainer', user: justice)
puts "Trainer 2 Created !!"


john = User.create(username: 'kibirige_john', full_name: 'John Kibirige', date_of_birth: '05/05/1996', address: 'UGANDA', email_address: 'john@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA')
user_john = Role.create(user: john)
puts "User 2 Created !!"

muskan = User.create(username: 'muskan', full_name: 'Muskan Gupta', date_of_birth: '28/04/1999', address: 'Uttar Pardesh, INDIA', email_address: 'muskan.gupta@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA')
user_muskan = Role.create(user: muskan)
puts "User 3 Created !!"

puts "Admin Created Successfully !"
puts "Data Seeded !!"