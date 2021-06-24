class Studio < ActiveRecord::Base
    has_many :dance_classes 
    has_many :styles, through: :dance_classes
    validates :name, presence: true

end