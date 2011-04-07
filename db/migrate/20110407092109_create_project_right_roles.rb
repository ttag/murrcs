class CreateProjectRightRoles < ActiveRecord::Migration
  def self.up
    create_table :project_right_roles do |t|
      t.integer :project_id
      t.integer :right_id
      t.integer :role_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project_right_roles
  end
end
