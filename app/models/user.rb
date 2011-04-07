class User < ActiveRecord::Base
  has_many :projects, :through => :project_role_users
  has_many :roles, :through => :project_role_users, :order => :position
  validates_presence_of :username
  validates_uniqueness_of :username
  
  def inverted_full_name
    last_name + ", " + first_name
  end

end
