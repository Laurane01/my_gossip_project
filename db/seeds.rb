# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |city|
  city = City.create!(name: Faker::HarryPotter.character, zip_code: Faker::DragonBall.character)
	puts "City : #{city.name}, #{city.zip_code}"
end

10.times do |user|
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: (rand(0..100)), city: City.all.sample, city_id: (rand(1..10)))
	puts "User : #{user.first_name} | #{user.last_name} | #{user.description} | #{user.email} | #{user.age}"
end

20.times do |gossip|
  gossip = Gossip.create!(title: Faker::DragonBall.character, content: Faker::LeagueOfLegends.rank, city: City.all.sample, tag: Tag.all.sample)
	puts "Gossip : #{gossip.user_id} | #{gossip.title} | #{gossip.content} | #{gossip.city} | #{gossip.tag}"
end

10.times do |tag|
  tag = Tag.create!(gossip_id: (rand(1..20)), title: Faker::DragonBall.character, city: City.all.sample, user: User.all.sample) ## peut etre rajouter gossip_id
	puts "Tag : #{tag.gossip_id} | #{tag.title} | #{tag.city} | #{tag.user}| "
end

5.times do |private_message|
  private_message = Private_message.create!(content: Faker::DragonBall.character)
	puts "Private_message : #{private_message.content}"
end

10.times do
Gossip.all.sample.tags << Tag.all.sample
Tag.all.sample.gossips << Gossip.all.sample
end