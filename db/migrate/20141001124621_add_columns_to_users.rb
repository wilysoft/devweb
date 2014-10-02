class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :iduser, :string
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :typeuser, :integer
    add_column :users, :birthday, :date
    add_column :users, :address, :string
  end
end
