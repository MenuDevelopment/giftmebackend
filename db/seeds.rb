# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = []

20.times do
  users.push(User.create({
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    payment: Faker::Bitcoin.address
    }))
end
gifts = []
10.times do
  gifts.push(Gift.create({
    item: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    user_id: users.sample.id
    }))
end

10.times do
  Pledge.create({
    user: users.sample,
    gift: gifts.sample,
    amount: 1.50
    })
  end
