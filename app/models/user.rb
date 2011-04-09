class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable, :token_authenticatable, :confirmable,
         :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username

  has_many :projects, :through => :project_role_users
  has_many :roles, :through => :project_role_users, :order => :position

  validates_presence_of :username
  validates_uniqueness_of :username

  def inverted_full_name
    last_name + ", " + first_name
  end

end
