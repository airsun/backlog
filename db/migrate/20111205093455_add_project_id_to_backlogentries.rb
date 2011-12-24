class AddProjectIdToBacklogentries < ActiveRecord::Migration
  def change
    add_column :backlogentries, :project_id, :integer
  end
end
