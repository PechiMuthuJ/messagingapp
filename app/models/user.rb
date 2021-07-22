class User < ApplicationRecord
    has_many :messages
    validates :username, uniqueness:true,presence:true, length:{minimum:3,maximum:15}
    has_secure_password
end
