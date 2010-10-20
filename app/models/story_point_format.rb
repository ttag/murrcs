class StoryPointFormat < ActiveRecord::Base
  has_one :project, :class_name => "Project",:foreign_key => "story_point_format_id"
end
