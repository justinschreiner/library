class CreateLibraryLocations < ActiveRecord::Migration[6.0]
  def self.up
    create_table :library_locations do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :established, :integer
    end
  end

  def self.down
    drop_table :library_locations
  end
end
