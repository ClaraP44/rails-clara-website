# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'net/http'

puts "Cleaning database..."
[ProjectWebLanguage, Project, Category, WebLanguage].each(&:destroy_all)



puts "Creating categories"

# CATEGORIES

Web_development = Category.create!(
  name: "Développement web"
)

Graphic_design = Category.create!(
  name: "Design graphique"
)

Video_editing = Category.create!(
  name: "Montage vidéo"
)

Visual_identity = Category.create!(
  name: "Identité visuelle"
)

Wordpress = Category.create!(
  name: "Wordpress"
)



puts "Creating web languages"

# WEB LANGUAGES

HTML_CSS = WebLanguage.create!(
  name: "HTML/CSS"
)

Javascript = WebLanguage.create!(
  name: "Javascript"
)

SQL = WebLanguage.create!(
  name: "SQL"
)

Ruby = WebLanguage.create!(
  name: "Ruby"
)



puts "Creating projects"

# PROJECTS

puts "Creating project Geocool"

Geocool = Project.create!(
  categories: [Web_development, Graphic_design],
  name: "Geocool",
  year: 2023,
  client: "",
  team: "Vincent HELPIN\nAlmis LIPON",
  description: "Adressée plus particulièrement aux professionnels du bâtiment, Geocool est une application permettant de réaliser des études de faisabilité pour la construction de puits climatiques. Nous avons développé l'application avec Ruby on Rails et avons utilisé d'autres langages web comme Javascript et Python. J'étais responsable front-end sur ce projet : le défi principal fut de rendre ce domaine très technique abordable à tous par un design épuré, tout en évitant le trop plein d'informations.",
  web_languages: [Ruby, HTML_CSS, Javascript]
)

file = File.open(Rails.root.join("db/seeds_pics/projects/geocool/geocool.jpg"))
Geocool.photo.attach(io: file, filename: "geocool.jpg", content_type: "image/jpeg")
Geocool.save!



puts "Creating project Noise Impulsion"
NoiseImpulsion = Project.create!(
  categories: [Graphic_design],
  name: "Noise Impulsion",
  year: 2023,
  client: "Noise Impulsion",
  team: "",
  description: "Noise Impulsion est une association nantaise qui a pour mission l'organisation de concerts rock/metal éco-responsables. L'objectif était de créer une charte graphique pour Instagram afin que nos publications soient plus facilement identifiables et agréables à l'oeil pour notre communauté.",
)

file = File.open(Rails.root.join("db/seeds_pics/projects/noise_impulsion/noise-impulsion.jpg"))
NoiseImpulsion.photo.attach(io: file, filename: "noise-impulsion.jpg", content_type: "image/jpeg")
NoiseImpulsion.save!



puts "Creating project AirPasSoft"
AirPasSoft = Project.create!(
  categories: [Web_development, Graphic_design],
  name: "Air pas Soft",
  year: 2023,
  client: "",
  team: "Vincent HELPIN
  Almis LIPON",
  description: "Projet réalisé en équipe, l'idée était de créer une application Ruby on Rails sur le modèle d'Airbnb. Dans un monde post-apocalytique, Air pas Soft permet de louer des armes à des particuliers.",
  web_languages: [Ruby, HTML_CSS, Javascript]
)

# AirPasSoft.web_languages << Ruby

file = File.open(Rails.root.join("db/seeds_pics/projects/airpassoft/airpassoft.jpg"))
AirPasSoft.photo.attach(io: file, filename: "airpassoft.jpg", content_type: "image/jpeg")
AirPasSoft.save!



puts "Creating project Léapicota"
Léapicota = Project.create!(
  categories: [Wordpress],
  name: "Léapicota",
  year: 2022,
  client: "Léa PICOT",
  team: "Léa PICOT",
  description: "Léa PICOT, alias Léapicota, est designer graphique spécialisée en design alimentaire. Elle souhaitait un site web pour présenter ses différents projets professionnels. Le site a été réalisé sur Wordpress avec Divi et en coréalisation avec Léa, qui s'est occupée de la partie design.",
  web_languages: [HTML_CSS]
)

cloudinary_url_leapicota = 'https://res.cloudinary.com/drb37tawz/image/upload/v1693327771/main_image_leapicota_bfq9qh.jpg'
cloudinary_uri_leapicota = URI.parse(cloudinary_url_leapicota)
cloudinary_image_leapicota = Net::HTTP.get(cloudinary_uri_leapicota)
Léapicota.photo.attach(io: StringIO.new(cloudinary_image_leapicota), filename: 'leapicota.jpg')
Léapicota.save!



puts "Creating project Recyclage de Metal Rouillé"
Rmr = Project.create!(
  categories: [Video_editing],
  name: "Recyclage de Metal Rouillé",
  year: 2022,
  client: "Noise Impulsion",
  team: "",
  description: "'Recyclage de Metal Rouillé' est le nom d'un évènement musical organisé par l'association Noise Impulsion, à l'esprit rock éco-solidaire. L'évènement met en lumière des groupes locaux de rock/metal lors d'une soirée-concert. La vidéo a été réalisée avec After Effects et en utilisant un template de Motion Array.",
)

file = File.open(Rails.root.join("db/seeds_pics/projects/rmr/rmr.jpg"))
Rmr.photo.attach(io: file, filename: "rmr.jpg", content_type: "image/jpeg")
Rmr.save!



puts "Creating project STDevelopments"
STDevelopments = Project.create!(
  categories: [Wordpress],
  name: "ST Developments",
  year: 2022,
  client: "ST Developments",
  team: "",
  description: "Cabinet de conseil spécialisé en développement de franchise, ST Developments souhaitait refondre son site internet. Le site a été réalisé sur Wordpress et en utilisant un template de Muffin Group.",
  web_languages: [HTML_CSS]
)

file = File.open(Rails.root.join("db/seeds_pics/projects/stdevelopments/stdevelopments.jpg"))
STDevelopments.photo.attach(io: file, filename: "stdevelopments.jpg", content_type: "image/jpeg")
STDevelopments.save!



# puts "Creating project RapidCouture"
# RapidCouture = Project.create!(
#   categories: [Video_editing],
#   name: "Rapid Couture",
#   year: 2022,
#   client: "Rapid Couture",
#   team: "",
#   description: "Enseigne leader de retouches et travaux de couture, Rapid couture souhaitait développer son réseau. Réalisation d'une vidéo publiée sur Facebook ads à l'intention de futurs candidats franchisés.",
# )

# file = File.open(Rails.root.join("db/seeds_pics/projects/geocool/image-test.jpg"))
# RapidCouture.photo.attach(io: file, filename: "image-test.jpg", content_type: "image/jpeg")
# RapidCouture.save!



puts "Seeds Finished!"
