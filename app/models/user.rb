class User < ApplicationRecord
   has_secure_password
   has_many :triplists
   validates :email, :presence =>true, :uniqueness => true
end
