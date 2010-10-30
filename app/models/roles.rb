class Roles < ActiveRecord::Base
  belongs_to :user, :class_name => "User",:foreign_key => :role_id
end
