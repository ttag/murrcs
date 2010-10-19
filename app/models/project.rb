class Project < ActiveRecord::Base
belongs_to :format, :class_name => "StoryPointFormat"
end
