class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :key
      t.text :description
      t.integer :status
      t.boolean :active

      t.timestamps
    end
  end
end
