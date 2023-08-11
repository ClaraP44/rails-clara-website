class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :year
      t.string :client
      t.string :team

      t.timestamps
    end
  end
end
