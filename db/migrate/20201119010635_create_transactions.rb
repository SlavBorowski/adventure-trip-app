class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.date :purchase_date
      t.decimal :amount, precision: 10, scale: 2
      t.references :trip, null: false, foreign_key: true
      t.references :buyer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
