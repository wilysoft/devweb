class AddColumnsUsers < ActiveRecord::Migration
  def change
  	add_column :users, :iduser, :string
  end
end
