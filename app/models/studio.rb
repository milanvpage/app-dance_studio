class Studio < ActiveRecord::Base
    has_many :dance_classes
    has_many :teachers, through: :dance_classes
end