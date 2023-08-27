class AddCategoriesToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :categories, :string
  end
end
