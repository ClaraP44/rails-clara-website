# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Project.destroy_all

puts "Creating projects"

Geocool = Project.create!(
  name: "Geocool",
  year: 2023,
  client: "Le Wagon",
  team: "Vincent HELPIN"
)

puts "Seeds Finished!"
