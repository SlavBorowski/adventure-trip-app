class Trip < ApplicationRecord
  has_one :address
  belongs_to :activity
  belongs_to :seller
  has_one_attached :image
  accepts_nested_attributes_for :address
end
