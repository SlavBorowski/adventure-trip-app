class Address < ApplicationRecord
  belongs_to :trip

  validates :addr1, presence: :true
  validates :city, presence: true
  validates :state, presence: true
  validates :postcode, presence: true, length: { is: 4 }, numericality: { greater_than: 0 }
end
