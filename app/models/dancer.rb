class Dancer < ActiveRecord::Base
    has_many :dance_classes
    has_secure_password # "abc" => "shdncjamcumdr"
end
