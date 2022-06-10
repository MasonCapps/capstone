class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :site_id
      t.integer :user_id
      t.decimal :subtotal, precision: 9, scale: 2
      t.decimal :tax, precision: 9, scale: 2
      t.decimal :total, precision: 9, scale: 2

      t.timestamps
    end
  end
end
