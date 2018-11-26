# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database of users...'
User.destroy_all
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

# benoit = User.create!(email: "benoitdelest@gmail.com",
# password: "123456",
# first_name: "Benoit",
# last_name: "Delest",
# phone_number: "0609216014",
# address: "3 rue de la Joncquiere",
# postcode: "75017",
# city: "Paris",
# country: "France")
# cecile = User.create!(email: "cecile.dezy@gmail.com",
# password: "123456",
# first_name: "Cécile",
# last_name: "Dezy",
# phone_number: "0677136554",
# address: "6 rue Euryale Dehaynin",
# postcode: "75019",
# city: "Paris",
# country: "France")
# chris = User.create!(email: "christophe@noujaim.com",
# password: "123456",
# first_name: "Christophe",
# last_name: "Noujaim",
# phone_number: "0663420512",
# address: "Pigalle 69b",
# postcode: "75018",
# city: "Paris",
# country: "France")

# puts "4 users created"

# puts 'Cleaning database of Mobile...'
# Mobile.destroy_allputs "creating 1 mobile for each user"
# mobone = Mobile.new(brand: "Samsung",
#  model: "Note 8",
#  daily_price: "5",
#  photo: "myr1ofzlfvgayoy7bmey"
#  address: "26 rue Edouard Vaillant",
#  postcode: "93140",
#  city: "Bondy",
#  country: "France")
# mobone.user_id = jeremy.id
# mobone.save!mobtwo = Mobile.new(brand: "Apple",
#  model: "Iphone 7 +",
#  daily_price: "2",
#  photo: "myr1ofzlfvgayoy7bmey"
#  address: "3 rue de la Joncquiere",
#  postcode: "75017",
#  city: "Paris",
#  country: "France")
# mobtwo.user_id = benoit.id
# mobtwo.save!mobthree = Mobile.new(brand: "Samsung",
#  model: "galaxy s7",
#  daily_price: "1",
#  photo: "myr1ofzlfvgayoy7bmey"
#  address: "6 rue Euryale Dehaynin",
#  postcode: "75019",
#  city: "Paris",
#  country: "France")
# mobthree.user_id = cecile.id
# mobthree.save!mobfour = Mobile.new(brand: "One+",
#  model: "3T",
#  daily_price: "3",
#  photo: "myr1ofzlfvgayoy7bmey"
#  address: "Pigalle 69b",
#  postcode: "75018",
#  city: "Paris",
#  country: "France")
# mobfour.user_id = chris.id
# mobfour.save!puts "4 mobiles saved"
