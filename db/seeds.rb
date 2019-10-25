# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(login: 'admin', admin: true, password:
  'aaa12345', password_confirmation: 'aaa12345')
100.times do
  Post.create(title: Faker::Lorem.sentence,
              user: user,
              body: Faker::Lorem.paragrap)
end
