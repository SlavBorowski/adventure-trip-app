class AddSellerRefToTrips < ActiveRecord::Migration[6.0]
  def change
    add_reference :trips, :seller, null: false, foreign_key: true
  end
end
