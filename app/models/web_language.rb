class WebLanguage < ApplicationRecord
  has_many :project_web_languages, dependent: :destroy
  has_many :projects, through: :project_web_languages
end
