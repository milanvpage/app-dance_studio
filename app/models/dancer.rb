class Dancer < ActiveRecord::Base
    has_many :dancers_classes
    has_many :dance_classes, through: :dancers_classes
end
