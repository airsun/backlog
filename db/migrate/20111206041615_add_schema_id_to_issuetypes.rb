class AddSchemaIdToIssuetypes < ActiveRecord::Migration
  def change
    drop_table :issuetypes_projects
    add_column :issuetypes, :schema_id, :integer
  end
end
