class Publishers < ActiveRecord::Migration[6.0]
  def self.up
    create_table :publishers do |t|
      t.column :name, :string
      t.column :created_at, :timestamp
    end
  end

  def self.down
    drop_table :publishers
  end
end
