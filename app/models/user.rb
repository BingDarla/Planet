# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  dob             :date
#  photo           :text
#  email           :text
#  password_digest :string
#  admin           :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
   has_secure_password
   has_many :triplists
   has_many :comments
   validates :email, :presence =>true, :uniqueness => true
end
