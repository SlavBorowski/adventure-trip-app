class AddColumnsToSellers < ActiveRecord::Migration[6.0]
  def change
    add_column :sellers, :business_name, :string
    add_column :sellers, :phone, :integer
    add_column :sellers, :website, :string
  end
end
