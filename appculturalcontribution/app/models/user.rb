class User < ActiveRecord::Base
        has_many :volunteers
        has_many :events, through: :volunteers
        has_secure_password
end
