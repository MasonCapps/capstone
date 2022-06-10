class AddColumnToUserModel < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :creator, :boolean
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
  end
end
