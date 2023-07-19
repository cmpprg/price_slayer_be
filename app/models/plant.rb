class Plant < ApplicationRecord
  has_many :plant_vendors
  has_many :vendors, through: :plant_vendors
end
