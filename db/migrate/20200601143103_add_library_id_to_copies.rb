class AddLibraryIdToCopies < ActiveRecord::Migration[6.0]
  def change
    add_column :copies, :library_id, :integer
  end
end
