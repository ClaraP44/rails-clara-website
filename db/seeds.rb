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

# Visual_identity = Category.create!(
#   name: "Identité visuelle"
# )

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

puts "Creating project Noise Impulsion"
NoiseImpulsion = Project.create!(
  categories: [Graphic_design],
  name: "Noise Impulsion",
  year: 2023,
  client: "Noise Impulsion",
  team: "",
  description: "Noise Impulsion est une association nantaise qui a pour mission l'organisation de concerts rock/metal éco-responsables. L'objectif était de créer une charte graphique pour Instagram afin que nos publications soient plus facilement identifiables pour notre communauté."
)

# Main image
file = File.open(Rails.root.join("db/seeds_pics/projects/noise_impulsion/noise-impulsion.jpg"))
NoiseImpulsion.photo.attach(io: file, filename: "noise-impulsion.jpg", content_type: "image/jpeg")
NoiseImpulsion.save!

# Project's images
image_paths_noiseimpulsion = ['moodboard.jpg', 'feed-instagram.jpg']
image_paths_noiseimpulsion.each do |image_path|
  uploaded_image = Cloudinary::Uploader.upload(File.join(Rails.root, 'db/seeds_pics/projects/noise_impulsion', image_path))
  NoiseImpulsion.project_images.create(image: uploaded_image['secure_url'])
end



puts "Creating project Portfolio"
Portfolio = Project.create!(
  categories: [Web_development],
  name: "Portfolio",
  year: 2023,
  client: "",
  team: "",
  description: "Créé avec Ruby on Rails.",
  web_languages: [Ruby, HTML_CSS, Javascript]
)

# Main image
file = File.open(Rails.root.join("db/seeds_pics/projects/porfolio/portfolio.webp"))
Portfolio.photo.attach(io: file, filename: "portfolio.webp", content_type: "image/webp")
Portfolio.save!

# Logo
file = File.open(Rails.root.join("db/seeds_pics/projects/porfolio/logo-portfolio.webp"))
Portfolio.logo.attach(io: file, filename: "logo-portfolio.webp", content_type: "image/webp")
Portfolio.save!



puts "Creating project Geocool"

Geocool = Project.create!(
  categories: [Web_development, Graphic_design],
  name: "Geocool",
  year: 2023,
  client: "",
  team: "Vincent HELPIN\nAlmis LIPON",
  description: "Adressée plus particulièrement aux professionnels du bâtiment, Geocool est une application permettant de réaliser des études de faisabilité pour la construction de puits climatiques. Nous avons développé l'application avec Ruby on Rails et utilisé d'autres langages web comme Javascript et Python. J'étais responsable front-end sur ce projet : le défi principal fut de rendre ce domaine très technique abordable à tous par un design épuré, tout en évitant le trop plein d'informations.",
  web_languages: [Ruby, HTML_CSS, Javascript]
)

# Main image
file = File.open(Rails.root.join("db/seeds_pics/projects/geocool/geocool.webp"))
Geocool.photo.attach(io: file, filename: "geocool.webp", content_type: "image/webp")
Geocool.save!

# Logo
# file = File.open(Rails.root.join("db/seeds_pics/projects/geocool/logo-geocool.webp"))
# Geocool.logo.attach(io: file, filename: "logo-geocool.webp", content_type: "image/webp")
# Geocool.save!

# Project's images
image_paths = ['homepage.webp', 'project-name.webp', 'batiment.webp', 'sol.webp', 'resultats.webp']
image_paths.each do |image_path|
  uploaded_image = Cloudinary::Uploader.upload(File.join(Rails.root, 'db/seeds_pics/projects/geocool', image_path))
  Geocool.project_images.create(image: uploaded_image['secure_url'])
end



puts "Creating project AirPasSoft"
AirPasSoft = Project.create!(
  categories: [Web_development, Graphic_design],
  name: "Air pas Soft",
  year: 2023,
  client: "",
  team: "Vincent HELPIN
  Almis LIPON",
  description: "Projet réalisé en équipe, l'idée était de créer une application Ruby on Rails sur le modèle d'Airbnb en 1 semaine. Dans un monde post-apocalytique où la violence fait rage, Air pas Soft permet de louer des armes à des particuliers. Les utilisateurs en quête d'une arme peuvent ainsi voir toutes les armes disponibles en location, en louer une pour une durée déterminée et voir leurs récapitulatifs de commande. En tant que loueur, la personne peut accepter ou non une demande de location ou encore ajouter une arme sur le marché.",
  web_languages: [Ruby, HTML_CSS, Javascript]
)

# AirPasSoft.web_languages << Ruby

# Main image
file = File.open(Rails.root.join("db/seeds_pics/projects/airpassoft/air-pas-soft.webp"))
AirPasSoft.photo.attach(io: file, filename: "air-pas-soft.webp", content_type: "image/webp")
AirPasSoft.save!

# Logo
file = File.open(Rails.root.join("db/seeds_pics/projects/airpassoft/logo-air-pas-soft.webp"))
AirPasSoft.logo.attach(io: file, filename: "logo-air-pas-soft.webp", content_type: "image/webp")
AirPasSoft.save!

# Project's images
image_paths_airpassoft = ['homepage.jpg', 'weapons.jpg', 'weapon.jpg', 'myweapons.jpg', 'newweapon.jpg']
image_paths_airpassoft.each do |image_path|
  uploaded_image = Cloudinary::Uploader.upload(File.join(Rails.root, 'db/seeds_pics/projects/airpassoft', image_path))
  AirPasSoft.project_images.create(image: uploaded_image['secure_url'])
end



puts "Creating project Léapicota"
Léapicota = Project.create!(
  categories: [Wordpress],
  name: "Léapicota",
  year: 2022,
  client: "Léa PICOT",
  team: "Léa PICOT",
  description: "Léa PICOT est designer graphique spécialisée en design alimentaire. Elle souhaitait un site web pour présenter ses différents projets professionnels. Le site a été réalisé sur Wordpress avec Divi et en coréalisation avec Léa, qui s'est occupée de la partie design.",
  web_languages: [HTML_CSS]
)

# cloudinary_url_leapicota = 'https://res.cloudinary.com/drb37tawz/image/upload/v1693327771/main_image_leapicota_bfq9qh.jpg'
# cloudinary_uri_leapicota = URI.parse(cloudinary_url_leapicota)
# cloudinary_image_leapicota = Net::HTTP.get(cloudinary_uri_leapicota)
# Léapicota.photo.attach(io: StringIO.new(cloudinary_image_leapicota), filename: 'leapicota.jpg')
# Léapicota.save!

# Main image
file = File.open(Rails.root.join("db/seeds_pics/projects/leapicota/leapicota.webp"))
Léapicota.photo.attach(io: file, filename: "leapicota.webp", content_type: "image/webp")
Léapicota.save!

# Project's images
image_paths_leapicota = ['realisations.jpg', 'a-propos.jpg', 'cv.jpg', 'contact.jpg']
image_paths_leapicota.each do |image_path|
  uploaded_image = Cloudinary::Uploader.upload(File.join(Rails.root, 'db/seeds_pics/projects/leapicota', image_path))
  Léapicota.project_images.create(image: uploaded_image['secure_url'])
end



puts "Creating project Recyclage de Metal Rouillé"
Rmr = Project.create!(
  categories: [Video_editing],
  name: "Recyclage de Metal Rouillé",
  year: 2022,
  client: "Noise Impulsion",
  team: "",
  description: "'Recyclage de Metal Rouillé' est le nom d'un évènement musical organisé par l'association Noise Impulsion, à l'esprit rock éco-solidaire. L'évènement met en lumière des groupes locaux de rock/metal lors d'une soirée-concert. La vidéo a été réalisée avec After Effects et en utilisant un template de Motion Array.",
  youtube_url: "https://www.youtube.com/embed/y80XRItfnUA"
)

# Main image
file = File.open(Rails.root.join("db/seeds_pics/projects/rmr/recyclage-de-metal-rouille.webp"))
Rmr.photo.attach(io: file, filename: "recyclage-de-metal-rouille.webp", content_type: "image/webp")
Rmr.save!



puts "Creating project RapidCouture"
RapidCouture = Project.create!(
  categories: [Video_editing],
  name: "Rapid Couture",
  year: 2022,
  client: "Rapid Couture",
  team: "",
  description: "Enseigne leader de retouches et travaux de couture, Rapid couture souhaitait développer son réseau. Réalisation d'une vidéo publiée sur Facebook ads à l'intention de futurs candidats franchisés.",
)

# Main image
file = File.open(Rails.root.join("db/seeds_pics/projects/geocool/image-test.jpg"))
RapidCouture.photo.attach(io: file, filename: "image-test.jpg", content_type: "image/jpeg")
RapidCouture.save!



puts "Creating project STDevelopments"
STDevelopments = Project.create!(
  categories: [Wordpress],
  name: "ST Developments",
  year: 2022,
  client: "ST Developments",
  team: "",
  description: "Cabinet de conseil spécialisé en développement de franchise, ST Developments souhaitait refondre son site internet. Les utilisateurs peuvent notamment en apprendre plus sur les prestations proposées, voir les franchises clientes et postuler en tant que futur(e) franchisé(e). Le site a été réalisé sur Wordpress et en utilisant un template de Muffin Group.",
  web_languages: [HTML_CSS]
)

# Main image
file = File.open(Rails.root.join("db/seeds_pics/projects/stdevelopments/st-developments.webp"))
STDevelopments.photo.attach(io: file, filename: "st-developments.webp", content_type: "image/webp")
STDevelopments.save!

# Logo
file = File.open(Rails.root.join("db/seeds_pics/projects/stdevelopments/logo-st-developments.webp"))
STDevelopments.logo.attach(io: file, filename: "logo-st-developments.webp", content_type: "image/webp")
STDevelopments.save!

# Project's images
image_paths_stdevelopments = ['homepage.webp', 'prestation.webp', 'a-propos.webp', 'blog.webp']
image_paths_stdevelopments.each do |image_path|
  uploaded_image = Cloudinary::Uploader.upload(File.join(Rails.root, 'db/seeds_pics/projects/stdevelopments', image_path))
  STDevelopments.project_images.create(image: uploaded_image['secure_url'])
end



puts "Creating project Mobilum"
Mobilum = Project.create!(
  categories: [Graphic_design],
  name: "Mobilum",
  year: 2019,
  client: "Mobilum",
  team: "",
  description: "Mobilum est une entreprise experte dans la fabrication de mobilier urbain en béton fibré. La marque souhaitait un moyen de communication tel qu'un catalogue pour se présenter auprès des collectivités territoriales et tous professionnels gravitant autour des projets urbains."
)

# Main image
file = File.open(Rails.root.join("db/seeds_pics/projects/mobilum/mobilum.webp"))
Mobilum.photo.attach(io: file, filename: "mobilum.webp", content_type: "image/webp")
Mobilum.save!



puts "Seeds Finished!"
