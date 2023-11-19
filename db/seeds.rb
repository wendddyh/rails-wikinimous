# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do |article|
  posts = Post.new(
    title: Faker::TvShows::RickAndMorty.quote,
    url: "https://www..com",
    votes: rand(0..100))
  posts.save!
  puts "New #{posts.title}, #{posts.url}, #{posts.votes}"
end
puts "seeding ended"
