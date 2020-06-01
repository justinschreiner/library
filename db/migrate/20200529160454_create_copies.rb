class CreateCopies < ActiveRecord::Migration[6.0]
  def self.up
    create_table :copies do |t|
      t.belongs_to :book
      t.belongs_to :library_location
      
      t.column :name, :string
      t.column :checked_out, :boolean
      t.column :condition, :string
    end
  end

  def self.down
    drop_table :copies
  end
end
