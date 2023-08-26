class CreateWebLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :web_languages do |t|
      t.string :name

      t.timestamps
    end
  end
end
