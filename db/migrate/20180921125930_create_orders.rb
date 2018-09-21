class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.float :total
      t.string :address
      t.string :city
      t.integer :qty
      t.references :menu, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
