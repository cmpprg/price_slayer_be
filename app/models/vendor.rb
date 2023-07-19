class Vendor < ApplicationRecord
  has_many :plant_vendors
  has_many :plants, through: :plant_vendors
end
