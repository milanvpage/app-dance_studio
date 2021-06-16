class Dancer < ActiveRecord::Base
    has_many :dance_classes
    validates :email, :password, presence: true
    has_secure_password # "abc" => "shdncjamcumdr"
end
