# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding to database initiated ....\n"
admin_user = User.create(username: 'skyv26', full_name: 'Aakash Verma', date_of_birth: '01/01/1990', address: 'Punjab, INDIA', email_address: 'dev.aakashv@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA', password: '12345678', password_confirmation: '12345678')
admin_role = Role.create(role: 'admin', user: admin_user)
puts "Admin Created !!\n"

# killy = User.create(username: 'itz_me_killy', full_name: 'Killy Quami', date_of_birth: '01/01/2000', address: 'Accra, GHANA', email_address: 'killy@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA')
# user_killy = Role.create(user: killy)
# puts "User 1 Created !!\n"

# danny = User.create(username: 'yo_yo_danny', full_name: 'Danny Baraka', date_of_birth: '10/05/1995', address: 'Nairobi, KENYA', email_address: 'danny@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA')
# danny_role = Role.create(role: 'trainer', user: danny)
# trainer_danny = Trainer.create(price: 20.25, user: danny)
# puts "Trainer 1 Created !!\n"

# justice = User.create(username: 'bajeri.justice', full_name: 'Justice Bajeri', date_of_birth: '11/11/2001', address: 'Accra, GHANA', email_address: 'justice@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA')
# justice_role = Role.create(role: 'trainer', user: justice)
# trainer_justice = Trainer.create(price: 10.25, user: justice)

# puts "Trainer 2 Created !!\n"


# john = User.create(username: 'kibirige_john', full_name: 'John Kibirige', date_of_birth: '05/05/1996', address: 'UGANDA', email_address: 'john@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA')
# user_john = Role.create(user: john)
# puts "User 2 Created !\n"

# muskan = User.create(username: 'muskan', full_name: 'Muskan Gupta', date_of_birth: '28/04/1999', address: 'Uttar Pardesh, INDIA', email_address: 'muskan.gupta@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA')
# user_muskan = Role.create(user: muskan)
# puts "User 3 Created !!\n"

# yoga = Speciality.create(name: 'YOGA')
# nutritionist = Speciality.create(name: 'NUTRITIONIST')
# boxer = Speciality.create(name: 'BOXER')
# weight_loss_specialist = Speciality.create(name: 'WEIGHT LOSS SPECIALIST')
# therapist = Speciality.create(name: 'THERAPIST')
# kids_trainer = Speciality.create(name: 'KIDS TRAINER')

# puts "Specialities Added !\n"

# danny_sp_1 = TrainerSpeciality.create(trainer: trainer_danny, speciality: boxer)
# danny_sp_2 = TrainerSpeciality.create(trainer: trainer_danny, speciality: therapist)
# danny_sp_3 = TrainerSpeciality.create(trainer: trainer_danny, speciality: kids_trainer)
# danny_sp_4 = TrainerSpeciality.create(trainer: trainer_danny, speciality: nutritionist)
# puts "Danny Training Specialities Added !\n"

# justice_sp_1 = TrainerSpeciality.create(trainer: trainer_justice, speciality: yoga)
# justice_sp_2 = TrainerSpeciality.create(trainer: trainer_justice, speciality: weight_loss_specialist)
# puts "Justice Training Specialities Added !\n"

# muskan_appointment_1 = Appointment.create(trainer: trainer_danny, user: muskan, appointment_date: '05/02/2023')
# john_appointment = Appointment.create(trainer: trainer_danny, user: john, appointment_date: '07/02/2023')
# muskan_appointment_2 = Appointment.create(trainer: trainer_justice, user: muskan, appointment_date: '10/02/2023')
# killy_appointment = Appointment.create(trainer: trainer_justice, user: killy, appointment_date: '14/02/2023')
# puts "Appointments Created !!\n"

# puts "Data Seeded !!\n"