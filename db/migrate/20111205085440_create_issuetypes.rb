class CreateIssuetypes < ActiveRecord::Migration
  def change
    create_table :issuetypes do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
