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

# PROJECTS

Geocool = Project.create!(
  name: "Geocool",
  year: 2023,
  client: "",
  team: "Vincent HELPIN\nAlmis LIPON",
  description: "Adressée plus particulièrement aux professionnels du bâtiment, Geocool est une application permettant de réaliser des études de faisabilité pour la construction de puits climatiques. Nous avons développé l'application avec Ruby on Rails et avons utilisé d'autres langages web comme Javascript et Python. J'étais responsable front-end sur ce projet : le défi principal fut de rendre ce domaine très technique abordable à tous par un design épuré, tout en évitant le trop plein d'informations."
)

file = File.open(Rails.root.join("db/seeds_pics/projects/geocool/image-test.jpg"))
Geocool.photo.attach(io: file, filename: "image-test.jpg", content_type: "image/jpeg")



NoiseImpulsion = Project.create!(
  name: "Noise Impulsion",
  year: 2023,
  client: "Noise Impulsion",
  team: "",
  description: "Noise Impulsion est une association nantaise avec pour mission l'organisation de concerts rock/metal responsables. L'objectif était de créer une charte graphique pour Instagram."
)

file = File.open(Rails.root.join("db/seeds_pics/projects/geocool/image-test.jpg"))
NoiseImpulsion.photo.attach(io: file, filename: "image-test.jpg", content_type: "image/jpeg")



AirPasSoft = Project.create!(
  name: "Air pas Soft",
  year: 2023,
  client: "",
  team: "Vincent HELPIN
  Almis LIPON",
  description: "Le projet Air pas Soft est un Air bnb détourné ! + expliquer ce que propose l'appli"
)

file = File.open(Rails.root.join("db/seeds_pics/projects/geocool/image-test.jpg"))
AirPasSoft.photo.attach(io: file, filename: "image-test.jpg", content_type: "image/jpeg")



Léapicota = Project.create!(
  name: "Léapicota",
  year: 2022,
  client: "Léa PICOT",
  team: "",
  description: "Léa PICOT alias Léapicota est designer graphique spécialisée en design alimentaire. Elle souhaitait un site web pour présenter ses différents projets professionnels. Le site a été réalisé sur Wordpress avec Divi."
)

file = File.open(Rails.root.join("db/seeds_pics/projects/geocool/image-test.jpg"))
Léapicota.photo.attach(io: file, filename: "image-test.jpg", content_type: "image/jpeg")



RapidCouture = Project.create!(
  name: "Rapid Couture",
  year: 2022,
  client: "Rapid Couture",
  team: "",
  description: "..."
)

file = File.open(Rails.root.join("db/seeds_pics/projects/geocool/image-test.jpg"))
RapidCouture.photo.attach(io: file, filename: "image-test.jpg", content_type: "image/jpeg")


STDevelopments = Project.create!(
  name: "ST Developments",
  year: 2022,
  client: "ST Developments",
  team: "",
  description: "..."
)

file = File.open(Rails.root.join("db/seeds_pics/projects/geocool/image-test.jpg"))
STDevelopments.photo.attach(io: file, filename: "image-test.jpg", content_type: "image/jpeg")


puts "Seeds Finished!"
