class ProjectRoleUser < ActiveRecord::Base
  belongs_to :project
  belongs_to :role
  belongs_to :user

end
