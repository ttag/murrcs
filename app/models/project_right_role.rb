class ProjectRightRole < ActiveRecord::Base
  belongs_to :project
  belongs_to :right
  belongs_to :role

end
