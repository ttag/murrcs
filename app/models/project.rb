class Project < ActiveRecord::Base
  has_many :rights, :through => :project_right_roles, :order => :position
  has_many :roles, :through => :project_right_roles, :order => :position
  has_many :roles, :through => :project_role_users, :order => :position
  has_many :users, :through => :project_role_users

  validates_presence_of :name
  validates_uniqueness_of :name
end
