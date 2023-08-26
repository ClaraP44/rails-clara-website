class CreateProjectWebLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :project_web_languages do |t|
      t.references :project, null: false, foreign_key: true
      t.references :web_language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
