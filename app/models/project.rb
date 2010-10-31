class Project < ActiveRecord::Base
belongs_to :format, :class_name => "StoryPointFormat"
validates_presence_of :name, :story_point_format_id,:start_date
has_and_belongs_to_many :user, :class_name => "user"
end
