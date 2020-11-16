class Trip < ApplicationRecord
  has_one :address
  belongs_to :activity
  belongs_to :seller
  accepts_nested_attributes_for :address
end
