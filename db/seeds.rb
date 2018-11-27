# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database of users...'
User.destroy_all
puts 'Cleaning database of Mobile...'
Mobile.destroy_all
puts 'Cleaning database of bookings...'
Booking.destroy_all
puts 'Cleaning database of Reviews...'
Review.destroy_all

puts 'generating the best users with password 123456 '
jeremy = User.create!(email: "jeremy.jouffroy@gmail.com",
 password: "123456",
 first_name: "Jeremy",
 last_name: "Jouffroy",
 phone_number: "0683411488",
 address: "26 rue Edouard Vaillant",
 postcode: "93140",
 city: "Bondy",
 country: "France")
benoit = User.create!(email: "benoitdelest@gmail.com",
 password: "123456",
 first_name: "Benoit",
 last_name: "Delest",
 phone_number: "0609216014",
 address: "3 rue de la Joncquiere",
 postcode: "75017",
 city: "Paris",
 country: "France")
cecile = User.create!(email: "cecile.dezy@gmail.com",
 password: "123456",
 first_name: "Cécile",
 last_name: "Dezy",
 phone_number: "0677136554",
 address: "6 rue Euryale Dehaynin",
 postcode: "75019",
 city: "Paris",
 country: "France")
chris = User.create!(email: "christophe@noujaim.com",
 password: "123456",
 first_name: "Christophe",
 last_name: "Noujaim",
 phone_number: "0663420512",
 address: "Pigalle 69b",
 postcode: "75018",
 city: "Paris",
 country: "France")

puts "4 users created"


puts "creating 1 mobile for each user"
mobOne = Mobile.new(brand: "Samsung",
  model: "Note 8",
  daily_price: "5",
  photo: "myr1ofzlfvgayoy7bmey",
  address: "26 rue Edouard Vaillant",
  postcode: "93140",
  city: "Bondy",
  country: "France")
mobOne.user_id = jeremy.id
mobOne.save!

mobTwo = Mobile.new(brand: "Apple",
  model: "Iphone 7 +",
  daily_price: "2",
  photo: "myr1ofzlfvgayoy7bmey",
  address: "3 rue de la Joncquiere",
  postcode: "75017",
  city: "Paris",
  country: "France")
mobTwo.user_id = benoit.id
mobTwo.save!


mobThree = Mobile.new(brand: "Samsung",
  model: "galaxy s7",
  daily_price: "1",
  photo: "myr1ofzlfvgayoy7bmey",
  address: "6 rue Euryale Dehaynin",
  postcode: "75019",
  city: "Paris",
  country: "France")
mobThree.user_id = cecile.id
mobThree.save!

mobFour = Mobile.new(brand: "One+",
  model: "3T",
  daily_price: "3",
  photo: "myr1ofzlfvgayoy7bmey",
  address: "Pigalle 69b",
  postcode: "75018",
  city: "Paris",
  country: "France")
mobFour.user_id = chris.id
mobFour.save!


puts "4 mobiles saved"





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



puts "Creating a review from Benoit about jeremy phone"
reviewOne = Review.new(
  content: "#{Faker::FamousLastWords.last_words} Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, corporis, commodi pariatur autem sunt earum vitae accusantium deleniti illo architecto non dolor necessitatibus omnis, tempora voluptatem aliquid quibusdam. Eius, vero! ",
  star: 4
  )
reviewOne.booking_id = mobOne.user_id
reviewOne.save!

puts "Review created by Benoit"

puts "Creating a booking from Chris phones to Cecile."
reviewTwo = Review.new(
  content: "#{Faker::FamousLastWords.last_words} Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos, corporis, commodi pariatur autem sunt earum vitae accusantium deleniti illo architecto non dolor necessitatibus omnis, tempora voluptatem aliquid quibusdam. Eius, vero! ",
  star: 5
  )
reviewTwo.booking_id = mobTwo.user_id
reviewTwo.save!
puts "Review created by Cecile "




