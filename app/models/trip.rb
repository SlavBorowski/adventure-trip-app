class Trip < ApplicationRecord
  has_one :address
  accepts_nested_attributes_for :address
end
