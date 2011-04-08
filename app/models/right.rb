class Right < ActiveRecord::Base
  has_many :projects, :through => :project_right_roles
  has_many :roles, :through => :project_right_roles, :order => :position

  acts_as_list

  validates_presence_of :name
  validates_uniqueness_of :name

end
