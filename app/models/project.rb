class Project < ActiveRecord::Base
  has_and_belongs_to_many :issuetypes
  #has_many :backlogentries
end
