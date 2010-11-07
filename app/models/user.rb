class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  validates_presence_of :login
  validates_uniqueness_of :login
  devise :database_authenticatable, :registerable,:registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_id, :project_id, :login, :user


  devise :database_authenticatable, :authentication_keys => [:login]
  has_one :roles, :class_name => "Roles"
  belongs_to :project, :class_name => "project"
end
