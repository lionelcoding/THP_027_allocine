require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Movie.destroy_all
# OtherModel.destroy_all
# etc
100.times do
  user = Movie.create!(name: Faker::Movie.title, year: Faker::Date.between(from: '1900-01-01', to: '2020-01-01'),, already_seen: false, my_rating : nil, allocine_rating: rand(0.0..5.0), genre: ["action", "horreur", "comédie", "drame"].sample, synopsys: Faker::Lorem.sentence(word_count: 10), director: Faker::Name.name)
end
# 