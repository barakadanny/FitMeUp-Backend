# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
dummy_data = [
  {
   "username": "nick_mit",
    "full_name": "Nick Mitchell",
    "address": "London, UK",
    "profile_pic": "https://drive.google.com/uc?id=1FgGXNDA8hYAz95F5vDp2seV9pTP8InhA",
    "date_of_birth": "09/11/1982",
    "email_address": "nick@mail.com",
    "phone_number": "",
    "height_in_meter": "1.88",
    "weight_in_kg": "110",
    "price": "49.99",
    "bio": "Nick is the founder of Ultimate Performance. He's based in London but with facilities operating on four different continents globally. He's authored four books on body transformation and runs a team of 250 elite trainers.",
     "password": "12345678",
     "password_confirmation": "12345678"
  
  },
  {
    "username": "alexi",
    "full_name": "Alexia Clark",
    "address": "Arizona, USA",
    "profile_pic": "https://lh3.googleusercontent.com/pw/AMWts8CqSJGZI2PALHKFHyYDvtp8eQbz_PIPo6lww9-nWGWgTMQnLEQN-2XpVQiyvguQksf16kPacxzieL7puHx1nvKdgI-IERTzMGn3Ml5ZUr9RIGKqNe-sMl5ZGHVJwPQg1HfD2PC_Mgh6tKaSLPYI8btA=w553-h974-no?authuser=0",
    "date_of_birth": "22/05/1990",
    "email_address": "alexia@fitmeupmail.com",
    "phone_number": "+923 2089748",
    "height_in_meter": "1.7",
    "weight_in_kg": "52.5",
    "price": "46.75",
    "bio": "Alexia is an online fitness coach that provides new daily workouts, nutrition support and direct one to one accountability if you need it. Her goal is for you to feel constantly challenged and stimulated by your workouts.",
"password": "12345678",
     "password_confirmation": "12345678"
  },
  {
    "username": "matt_roberts",
    "full_name": "Matt Roberts",
    "address": "Mayfair, UK",
    "profile_pic": "https://drive.google.com/uc?id=1Iasvkbtv1SUa7psBq2HByWwsPU3ke02J",
    "date_of_birth": "+44 2074919989",
    "email_address": "evolution@mattroberts.co.uk",
    "phone_number": "+124 6734648738",
    "height_in_meter": "1.8",
    "weight_in_kg": "54.6",
    "price": "55.5",
    "bio": "London based trainer Matt trains a roster of celebrity clients, is a published author and has his own brand of fitness clothing. But despite this borderline celebrity trainer status, he remains grounded.",
  "password": "12345678",
     "password_confirmation": "12345678"
  },
  {
    "username": "emmachan",
    "full_name": "Emma Chan",
    "address": "New South Wales, Australia",
    "profile_pic": "https://lh3.googleusercontent.com/pw/AMWts8Bp11Jzc0fw4Bpq0qOqfPPK0ScwTaGMPw7olY4WaVdjElqNUcj0c8NE3r1tdSMKfxSFf_3TFb7RjBVyUIIQl7IrTm5YzegThzRU8qW_ZwcD3ZIbWhqeyQ2hjTRl2ZQPa1QsdS5fsw-Nd0xwdadcmg48=w553-h974-no?authuser=0",
    "email_address": "emma@fitmeupmail.com",
    "phone_number": "+233 673587",
    "height_in_meter": "1.3",
    "weight_in_kg": "45.5",
    "price": "44.99",
    "bio": "Emma Chan is based at Coastal Fitness in Hong Kong. She's a health and performance specialist with a background in competitive volleyball. Her coaching and specialism was inspired by a sporting injury and her journey to recovery.",
 "password": "12345678",
     "password_confirmation": "12345678"
  },
  {
    "username": "shawnstaff",
    "full_name": "Shawn Stafford",
    "address": "UK",
    "profile_pic": "https://lh3.googleusercontent.com/pw/AMWts8AHo9WAI-VO1PeABBacFoQTIKiAgRp4KFTMme8wZXSTNOewNiJoCzy6iimgMwpZUkZsvYVxSP7nHwUnkbMRyxxwvwYh4U-uvnicsRj4I72HSMnUQs4pYsMsFK1swaWqZ1F3zdihLsfJODDwHehvuWrq=w553-h974-no?authuser=0",
    "date_of_birth": "05/08/2003",
    "email_address": "support@shaunstaffordfit.com",
    "phone_number": "+192 3783578",
    "height_in_meter": "1.82",
    "weight_in_kg": "88.5",
    "price": "38.5",
    "bio": "Growing up in a military family, health and fitness has always been a big part of my life. At school I played top level sport and carried this on through university where I participated in 5 winning Varsity Matches for Oxford University in Rugby and Track & Field.",
   "password": "12345678",
     "password_confirmation": "12345678"
  }
]
puts "Seeding to database initiated ....\n"
admin_user = User.create(username: 'skyv26', full_name: 'Aakash Verma', date_of_birth: '01/01/1990', address: 'Punjab, INDIA', email_address: 'dev.aakashv@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA', password: '12345678', password_confirmation: '12345678')
admin_role = Role.create(role: 'admin', user: admin_user)
puts "Admin Created !!\n"

killy = User.create(username: 'itz_me_killy', full_name: 'Killy Quami', date_of_birth: '01/01/2000', address: 'Accra, GHANA', email_address: 'killy@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA', password: '12345678', password_confirmation: '12345678')
user_killy = Role.create(user: killy)
puts "User 1 Created !!\n"

danny = User.create(username: 'yo_yo_danny', full_name: 'Danny Baraka', date_of_birth: '10/05/1995', address: 'Nairobi, KENYA', email_address: 'danny@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://lh3.googleusercontent.com/pw/AMWts8AHo9WAI-VO1PeABBacFoQTIKiAgRp4KFTMme8wZXSTNOewNiJoCzy6iimgMwpZUkZsvYVxSP7nHwUnkbMRyxxwvwYh4U-uvnicsRj4I72HSMnUQs4pYsMsFK1swaWqZ1F3zdihLsfJODDwHehvuWrq=w553-h974-no?authuser=0', password: 'dannydanny', password_confirmation: 'dannydanny')
danny_role = Role.create(role: 'trainer', user: danny)
trainer_danny = Trainer.create(price: 20.25, user: danny)
puts "Trainer 1 Created !!\n"

justice = User.create(username: 'bajeri.justice', full_name: 'Justice Bajeri', date_of_birth: '11/11/2001', address: 'Accra, GHANA', email_address: 'justice@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://drive.google.com/uc?id=1FgGXNDA8hYAz95F5vDp2seV9pTP8InhA', password: '12345678', password_confirmation: '12345678')
justice_role = Role.create(role: 'trainer', user: justice)
trainer_justice = Trainer.create(price: 10.25, user: justice)

puts "Trainer 2 Created !!\n"

dummy_data.each do |trainer|
  user_exclude = trainer
  user = User.create(user_exclude.except(:bio, :price))
  role = Role.create(role: 'trainer', user_id: user.id)
  trainer = Trainer.create(price: trainer[:price], user_id: user.id, bio: trainer[:bio])
end

john = User.create(username: 'kibirige_john', full_name: 'John Kibirige', date_of_birth: '05/05/1996', address: 'UGANDA', email_address: 'john@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA', password: '12345678', password_confirmation: '12345678')
user_john = Role.create(user: john)
puts "User 2 Created !\n"

muskan = User.create(username: 'muskan', full_name: 'Muskan Gupta', date_of_birth: '28/04/1999', address: 'Uttar Pardesh, INDIA', email_address: 'muskan.gupta@gmail.com', phone_number: '+91 1234567890', profile_pic: 'https://unsplash.com/photos/iEEBWgY_6lA', password: '12345678', password_confirmation: '12345678')
user_muskan = Role.create(user: muskan)
puts "User 3 Created !!\n"

yoga = Speciality.create(name: 'YOGA')
nutritionist = Speciality.create(name: 'NUTRITIONIST')
boxer = Speciality.create(name: 'BOXER')
weight_loss_specialist = Speciality.create(name: 'WEIGHT LOSS SPECIALIST')
therapist = Speciality.create(name: 'THERAPIST')
kids_trainer = Speciality.create(name: 'KIDS TRAINER')

puts "Specialities Added !\n"

danny_sp_1 = TrainerSpeciality.create(trainer: trainer_danny, speciality: boxer)
danny_sp_2 = TrainerSpeciality.create(trainer: trainer_danny, speciality: therapist)
danny_sp_3 = TrainerSpeciality.create(trainer: trainer_danny, speciality: kids_trainer)
danny_sp_4 = TrainerSpeciality.create(trainer: trainer_danny, speciality: nutritionist)
puts "Danny Training Specialities Added !\n"

justice_sp_1 = TrainerSpeciality.create(trainer: trainer_justice, speciality: yoga)
justice_sp_2 = TrainerSpeciality.create(trainer: trainer_justice, speciality: weight_loss_specialist)
puts "Justice Training Specialities Added !\n"

muskan_appointment_1 = Appointment.create(trainer: trainer_danny, user: muskan, appointment_date: '05/02/2023')
john_appointment = Appointment.create(trainer: trainer_danny, user: john, appointment_date: '07/02/2023')
muskan_appointment_2 = Appointment.create(trainer: trainer_justice, user: muskan, appointment_date: '10/02/2023')
killy_appointment = Appointment.create(trainer: trainer_justice, user: killy, appointment_date: '14/02/2023')
puts "Appointments Created !!\n"

puts "Data Seeded !!\n"