class Trip < ApplicationRecord
  has_one :address
  belongs_to :activity
  accepts_nested_attributes_for :address
end
