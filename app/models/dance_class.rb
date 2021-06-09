class DanceClass < ActiveRecord::Base
    has_many :dancers_classes
    has_many :dancers, through: :dancers_classes

end
