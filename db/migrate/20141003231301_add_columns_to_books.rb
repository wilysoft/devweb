class AddColumnsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :author_id, :string
    add_column :books, :category_id, :integer
    add_column :books, :book_id, :string
  end
end
