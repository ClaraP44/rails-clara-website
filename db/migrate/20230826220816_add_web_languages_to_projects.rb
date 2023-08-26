class AddWebLanguagesToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :web_languages, :string
  end
end
