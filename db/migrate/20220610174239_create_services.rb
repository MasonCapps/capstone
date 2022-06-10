class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.integer :site_id
      t.string :name
      t.decimal :price, precision: 9, scale: 2
      t.string :frequency

      t.timestamps
    end
  end
end
