class Project < ApplicationRecord
  has_many :project_web_languages, dependent: :destroy
  has_many :web_languages, through: :project_web_languages

  has_many :project_categories, dependent: :destroy
  has_many :categories, through: :project_categories

  has_one_attached :photo
  has_one_attached :logo

  has_many :project_images, dependent: :destroy
end
