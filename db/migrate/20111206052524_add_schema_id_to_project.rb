class AddSchemaIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :schema_id, :integer
  end
end
