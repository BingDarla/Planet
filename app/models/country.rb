# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :text
#  population :integer
#  language   :text
#  code       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Country < ApplicationRecord
  has_many :sights
end
