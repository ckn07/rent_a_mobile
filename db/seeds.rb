# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database of Reviews...'
Review.destroy_all
puts 'Cleaning database of bookings...'
Booking.destroy_all
puts 'Cleaning database of Mobile...'
Mobile.destroy_all
puts 'Cleaning database of users...'
User.destroy_all

puts 'generating the best users with password 123456 '
jeremy = User.create!(email: "jeremy.jouffroy@gmail.com",
 password: "123456",
 first_name: "Jeremy",
 last_name: "Jouffroy",
 phone_number: "0683411488",
 address: "26 rue Edouard Vaillant, 93140 Bondy, France")
benoit = User.create!(email: "benoitdelest@gmail.com",
 password: "123456",
 first_name: "Benoit",
 last_name: "Delest",
 phone_number: "0609216014",
 address: "3 rue de la Joncquiere, 75017 Paris, France")
cecile = User.create!(email: "cecile.dezy@gmail.com",
 password: "123456",
 first_name: "Cécile",
 last_name: "Dezy",
 phone_number: "0677136554",
  address: "6 rue Euryale Dehaynin, 75019 Paris, France ")
chris = User.create!(email: "christophe@noujaim.com",
 password: "123456",
 first_name: "Christophe",
 last_name: "Noujaim",
 phone_number: "0663420512",
   address: "20 Boulevard de Clichy, 75018 Paris, France")
jerem = User.create!(email: "jeremy.jouffroy+1@gmail.com",
 password: "123456",
 first_name: "Jer",
 last_name: "Jouf",
 phone_number: "0683411489",
 address: "4 rue abel, 75012 Paris, France")
ben = User.create!(email: "benoitdelest+1@gmail.com",
 password: "123456",
 first_name: "Ben",
 last_name: "Deleste",
 phone_number: "0609216015",
 address: "3 rue des moines, 75017 Paris, France")
cess = User.create!(email: "cecile.dezy+1@gmail.com",
 password: "123456",
 first_name: "Céss",
 last_name: "Dess",
 phone_number: "0677136555",
  address: "38 rue Euryale Dehaynin, 75019 Paris, France")
cricris = User.create!(email: "christophenoujaim@gmail.com",
 password: "123456",
 first_name: "Chris",
 last_name: "NouNou",
 phone_number: "0663420513",
  address: "15 boulevard Saint-Germain, 75005 Paris, France")

puts "8 users created"

array_photo = ["https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574031/One.jpg",
  "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574031/Iphone_7_Plus.jpg",
  "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574031/motorola.jpg",
  "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574031/galaxy-7.jpg",
  "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543491683/huawei_-_P20.jpg",
  "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574030/galaxy_note.jpg",
  "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574030/huawei_P20.jpg",
  "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574525/LG.jpg",
  "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574030/wyko.jpg"]

puts "creating 1 mobile for each user"
mobOne = Mobile.new(brand: "Samsung",
  model: "Note 8",
  daily_price: "5",
  address: "26 rue Edouard Vaillant, 93140 Bondy, France",
  content: "super mobile vraiment Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum quidem dolores dicta dolorem ex qui, deserunt iste tempore pariatur aliquam reiciendis, consequuntur suscipit dignissimos animi numquam quasi. Nihil, animi, dicta.")
mobOne.user_id = jeremy.id
mobOne.remote_photo_url = "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574030/galaxy_note.jpg"

mobOne.save!


mobTwo = Mobile.new(brand: "Apple",
  model: "Iphone 7 +",
  daily_price: "2",
  address: "3 rue de la Jonquiere, 75017 Paris, France",
  content: "super mobile vraiment Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum quidem dolores dicta dolorem ex qui, deserunt iste tempore pariatur aliquam reiciendis, consequuntur suscipit dignissimos animi numquam quasi. Nihil, animi, dicta.")
mobTwo.user_id = benoit.id
mobTwo.remote_photo_url = "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574031/Iphone_7_Plus.jpg"

mobTwo.save!


mobThree = Mobile.new(brand: "Samsung",
  model: "galaxy s7",
  daily_price: "1",
  address: "6 rue Euryale Dehaynin, 75019 Paris, France ",
  content: "super mobile vraiment même si Samsung ça pue. Eum quidem dolores dicta dolorem ex qui, deserunt iste tempore pariatur aliquam reiciendis, consequuntur suscipit dignissimos animi numquam quasi. Nihil, animi, dicta.")

mobThree.user_id = cecile.id
mobThree.remote_photo_url = "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574031/galaxy-7.jpg"

mobThree.save!

mobFour = Mobile.new(brand: "One+",
  model: "3T",
  daily_price: "3",
  address: "20 Boulevard de Clichy, 75018 Paris, France",
  content: "super mobile vraiment Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum quidem dolores dicta dolorem ex qui, deserunt iste tempore pariatur aliquam reiciendis, consequuntur suscipit dignissimos animi numquam quasi. Nihil, animi, dicta.")

mobFour.user_id = chris.id
mobFour.remote_photo_url = "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574031/One.jpg"

mobFour.save!

mobFive = Mobile.new(brand: "Huawei",
  model: "P20",
  daily_price: "15",
  address: "4 rue Abel, 75012 Pars, France",
  content: "Mobile de chinois qui vous espionne trop cool,ex qui, deserunt iste tempore pariatur aliquam reiciendis, consequuntur suscipit dignissimos animi numquam quasi. Nihil, animi, dicta.")

mobFive.user_id = jerem.id
mobFive.remote_photo_url = "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574030/huawei_P20.jpg"

mobFive.save!

mobSix = Mobile.new(brand: "Motorola",
  model: "X475HEN",
  daily_price: "10",
  address: "2 rue des moines, 75017 Paris, France",
  content: "Mobile cool et en bon état trop cool, consequuntur suscipit dignissimos animi numquam quasi. Nihil, animi, dicta.")

mobSix.user_id = ben.id
mobSix.remote_photo_url = "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574031/motorola.jpg"

mobSix.save!

mobSeven = Mobile.new(brand: "LG",
  model: "P430",
  daily_price: "22",
  address: "38 rue Euryale Dehaynin, 75019 Paris, France",
  content: "LG c'est cool c'est la base et il est sans rayures.consequuntur suscipit dignissimos animi numquam quasi. Nihil, animi, dicta.")

mobSeven.user_id = cess.id
mobSeven.remote_photo_url = "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574525/LG.jpg"

mobSeven.save!

mobEight = Mobile.new(brand: "Wyko",
  model: "France",
  daily_price: "6",
  address: "15 boulevard Saint-Germain, 75005 Paris, France",
  content: "Des fois il marche, des fois il marche pas. C'est normal c'est un modèle Français")

mobEight.user_id = cricris.id
mobEight.remote_photo_url = "https://res.cloudinary.com/dp22wwxuy/image/upload/v1543574030/wyko.jpg"

mobEight.save!

puts "8 mobiles saved"


puts 'Creating a booking from Jeremy phones to Benoit.'

bookingOne = Booking.new(
minDate: Faker::Date.backward(14),
maxDate: Date.today
  )
bookingOne.duration = (bookingOne.maxDate - bookingOne.minDate).to_i
bookingOne.mobile_id = mobOne.id
bookingOne.total_price = (mobOne.daily_price * bookingOne.duration).to_i
bookingOne.user_id = benoit.id
bookingOne.save!
puts "Wow Jeremy has rented his phones to Benoit from #{bookingOne.minDate} to #{bookingOne.maxDate} for #{bookingOne.total_price}"



puts 'Creating a booking from Chris phones to Cecile.'

bookingTwo = Booking.new(
minDate: Faker::Date.backward(14),
maxDate: Date.today
  )
bookingTwo.duration = (bookingTwo.maxDate - bookingTwo.minDate).to_i
bookingTwo.mobile_id = mobFour.id
bookingTwo.total_price = (mobFour.daily_price * bookingTwo.duration).to_i
bookingTwo.user_id = cecile.id
bookingTwo.save!
puts "Wow Chris has rented his phones to Cecile from #{bookingTwo.minDate} to #{bookingTwo.maxDate} for #{bookingTwo.total_price}"

puts 'Creating a booking from Chris phones to Cecile.'

bookingThree = Booking.new(
minDate: Faker::Date.backward(14),
maxDate: Date.today
  )
bookingThree.duration = (bookingThree.maxDate - bookingThree.minDate).to_i
bookingThree.mobile_id = mobEight.id
bookingThree.total_price = (mobSix.daily_price * bookingThree.duration).to_i
bookingThree.user_id = ben.id
bookingThree.save!
puts "Wow Cricris has rented his phones to Ben from #{bookingTwo.minDate} to #{bookingTwo.maxDate} for #{bookingTwo.total_price}"



puts "Creating a review from Benoit about jeremy phone"
reviewOne = Review.new(
  content: "#{Faker::FamousLastWords.last_words} Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, corporis, commodi pariatur autem sunt earum vitae accusantium deleniti illo architecto non dolor necessitatibus omnis, tempora voluptatem aliquid quibusdam. Eius, vero! ",
  star: 4
  )
reviewOne.booking = bookingOne
reviewOne.save!

puts "Review created by Benoit"

puts "Creating a booking from Chris phones to Cecile."
reviewTwo = Review.new(
  content: "#{Faker::FamousLastWords.last_words} Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, corporis, commodi pariatur autem sunt earum vitae accusantium deleniti illo architecto non dolor necessitatibus omnis, tempora voluptatem aliquid quibusdam. Eius, vero! ",
  star: 5
  )
reviewTwo.booking= bookingTwo
reviewTwo.save!
puts "Review created by Cecile "

puts "Creating a booking from Cricris phones to Ben."
reviewThree = Review.new(
  content: "#{Faker::FamousLastWords.last_words}. Le mec m'a loué un téléphone qui marche pas s'ba***d.commodi pariatur autem sunt earum vitae accusantium deleniti illo architecto non dolor necessitatibus omnis, tempora voluptatem aliquid quibusdam. Eius, vero! ",
  star: 2
  )
reviewThree.booking= bookingThree
reviewThree.save!
puts "Review created by Ben "
