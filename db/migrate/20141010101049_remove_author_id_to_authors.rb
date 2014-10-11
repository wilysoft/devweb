class RemoveAuthorIdToAuthors < ActiveRecord::Migration
  def change
    remove_column :authors, :author_id, :string
  end
end
