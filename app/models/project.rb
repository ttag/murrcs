class Project < ActiveRecord::Base
belongs_to :format, :class_name => "StoryPointFormat"
validates_presence_of :name, :story_point_format_id,:start_date
end
