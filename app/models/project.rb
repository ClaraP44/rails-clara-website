class Project < ApplicationRecord
  has_many :project_categories
  has_many :categories, through: :project_categories

  has_one_attached :photo
end
