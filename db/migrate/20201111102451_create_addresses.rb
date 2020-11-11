class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :addr1
      t.string :addr2
      t.string :city
      t.string :state
      t.integer :postcode

      t.timestamps
    end
  end
end
