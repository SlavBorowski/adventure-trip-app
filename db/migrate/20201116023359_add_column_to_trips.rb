class AddColumnToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :location, :string
  end
end
