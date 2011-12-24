class CreateIssuetypeProjectJoinTable < ActiveRecord::Migration
  def up
    create_table :issuetypes_projects, :id => false do |t|
      t.integer :issuetype_id
      t.integer :project_id
    end
  end

  def down
    drop_table :issuetypes_projects
  end
end
