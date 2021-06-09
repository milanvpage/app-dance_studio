class DancersClasses < ActiveRecord::Base
   belongs_to :dancer 
   belongs_to :dance_class  
end
