class Project < ApplicationRecord
  has_many :project_web_languages, dependent: :destroy
  has_many :web_languages, through: :project_web_languages

  has_one_attached :photo
end
