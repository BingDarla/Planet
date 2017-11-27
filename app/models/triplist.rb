# == Schema Information
#
# Table name: triplists
#
#  id         :integer          not null, primary key
#  name       :text
#  user_id    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Triplist < ApplicationRecord
  belongs_to  :user, optional: true
  has_and_belongs_to_many :sights
end
