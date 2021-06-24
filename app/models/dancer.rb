class Dancer < ActiveRecord::Base
    has_many :dance_classes
    has_many :studios
    has_many :styles
    validates :name, :age, :email, :password, presence: true
    has_secure_password # "abc" => "shdncjamcumdr"
end
