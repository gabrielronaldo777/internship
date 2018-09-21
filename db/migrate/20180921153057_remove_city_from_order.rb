class RemoveCityFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :city, :string
  end
end
