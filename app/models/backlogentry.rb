class Backlogentry < ActiveRecord::Base
  belongs_to :project
  belongs_to :issuetype
end
