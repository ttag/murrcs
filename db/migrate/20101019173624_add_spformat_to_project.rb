class AddSpformatToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :story_point_format_id, :integer
  end

  def self.down
    remove_column :projects, :story_point_format_id
  end
end
