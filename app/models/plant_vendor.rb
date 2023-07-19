class PlantVendor < ApplicationRecord
  belongs_to :plant
  belongs_to :vendor
end
