class CreateBacklogentries < ActiveRecord::Migration
  def change
    create_table :backlogentries do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.integer :priority
      t.integer :resolution

      t.timestamps
    end
  end
end
