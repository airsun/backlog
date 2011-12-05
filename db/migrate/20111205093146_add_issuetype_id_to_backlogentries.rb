class AddIssuetypeIdToBacklogentries < ActiveRecord::Migration
  def up
    change_table :backlogentries do |t|
      t.integer :issuetype_id
    end
  end

  def down
    remove_column :backlogentries, :issuetype_id
  end
end
