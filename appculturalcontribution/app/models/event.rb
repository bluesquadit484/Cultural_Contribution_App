class Event < ActiveRecord::Base
    has_many :volunteers
    has_many :users, through: :volunteers
    belongs_to :semesters
end
