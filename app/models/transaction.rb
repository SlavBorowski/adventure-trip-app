class Transaction < ApplicationRecord
  belongs_to :trip
  belongs_to :buyer
end
