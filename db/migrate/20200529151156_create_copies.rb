class CreateCopies < ActiveRecord::Migration[6.0]
  def self.up
    create_table :copies do |t|
      t.column :name, :string
      t.column :checked_out, :boolean
    end
  end

  def self.down
    drop_table :copies
  end
end
