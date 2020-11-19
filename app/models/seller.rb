class Seller < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :trips

  validates :business_name, presence: true, length: { minimum: 2 }
  validates :phone, presence: true, length: { is: 10 }
  validates :website, presence: true
end
