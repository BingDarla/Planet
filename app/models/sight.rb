# == Schema Information
#
# Table name: sights
#
#  id         :integer          not null, primary key
#  name       :text
#  location   :text
#  image      :text
#  info       :text
#  category   :text
#  latitude   :text
#  longtitude :text
#  country_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sight < ApplicationRecord
  belongs_to :country, optional: true
  has_many :comments
  has_and_belongs_to_many :triplists
end
