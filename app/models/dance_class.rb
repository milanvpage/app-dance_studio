class DanceClass < ActiveRecord::Base
    belongs_to :dancer
    belongs_to :studio
end
