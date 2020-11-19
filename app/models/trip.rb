class Trip < ApplicationRecord
  has_one :address
  belongs_to :activity
  belongs_to :seller
  has_one_attached :image
  accepts_nested_attributes_for :address

  validates :title, presence: true
  validates :duration, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true, length: { in: 30..800}
  validates :location, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 } 
  validates :start_date, presence: true
  validates :end_date, presence: true
end
