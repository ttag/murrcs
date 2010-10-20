class CreateStoryPointFormats < ActiveRecord::Migration
  def self.up
    create_table :story_point_formats do |t|
      t.string :story_point_format

      t.timestamps
    end
  end

  def self.down
    drop_table :story_point_formats
  end
end
