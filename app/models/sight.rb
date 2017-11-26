class Sight < ApplicationRecord
  belongs_to :country, optional: true
  has_and_belongs_to_many :triplists
end
