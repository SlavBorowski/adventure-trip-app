class AddTripRefToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :addresses, :trip, null: false, foreign_key: true
  end
end
