class AddUserInfoColumnsToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :commune, index: true, foreign_key: true
    add_column :users, :address, :string
    add_column :users, :code, :string
    add_column :users, :phone, :integer
  end
end
