class Style < ActiveRecord::Base
    has_many :dance_classes
    has_many :studios, through: :dance_classes
    validates :name, presence: true

end