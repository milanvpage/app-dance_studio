class DanceClass < ActiveRecord::Base
    belongs_to :studio
    belongs_to :style
    belongs_to :dancer
    validates :teacher, :level, :description, :name, presence: true

end
