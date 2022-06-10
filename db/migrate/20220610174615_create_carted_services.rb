class CreateCartedServices < ActiveRecord::Migration[7.0]
  def change
    create_table :carted_services do |t|
      t.integer :site_id
      t.integer :service_id
      t.integer :user_id
      t.integer :order_id
      t.string :scheduled_date
      t.string :status

      t.timestamps
    end
  end
end
