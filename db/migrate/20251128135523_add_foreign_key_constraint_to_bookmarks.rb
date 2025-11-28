class AddForeignKeyConstraintToBookmarks < ActiveRecord::Migration[8.1]
  def change
    # Remove the existing foreign key if it exists
    remove_foreign_key :bookmarks, :movies if foreign_key_exists?(:bookmarks, :movies)

    # Add a foreign key with RESTRICT constraint to prevent deletion of movies with bookmarks
    add_foreign_key :bookmarks, :movies, on_delete: :restrict
  end
end
