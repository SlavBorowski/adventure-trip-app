class AddColumnsToBuyers < ActiveRecord::Migration[6.0]
  def change
    add_column :buyers, :first_name, :string
    add_column :buyers, :last_name, :string
    add_column :buyers, :phone, :integer
  end
end
