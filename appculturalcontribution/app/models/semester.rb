class Semester < ActiveRecord::Base
    has_many :events 
end
