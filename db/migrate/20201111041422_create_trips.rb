class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.integer :duration
      t.string :description
      t.date :startdate
      t.date :enddate
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
