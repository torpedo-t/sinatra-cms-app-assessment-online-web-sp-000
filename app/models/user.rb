class User < ActiveRecord::Base
    has_many :videos
    has_secure_password
end