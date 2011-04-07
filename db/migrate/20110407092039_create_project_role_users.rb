class CreateProjectRoleUsers < ActiveRecord::Migration
  def self.up
    create_table :project_role_users do |t|
      t.integer :project_id
      t.integer :user_id
      t.integer :role_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project_role_users
  end
end
