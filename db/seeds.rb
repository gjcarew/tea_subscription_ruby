# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
evan = Customer.create!(fname: 'Evan', lname: 'Wheeler', email: 'swarsfan@turing.edu', address: '504 Turing lane')
evan.subscriptions.create!(title: 'Green and Citrus Teas', price: 12.50, frequency: 14)
evan.subscriptions.create!(title: 'African Chai', price: 17.25, frequency: 31)
