class Publishers < ActiveRecord::Migration[6.0]
  def change
    create_table :publishers do |t|
      t.column :name, :string
      t.column :created_at, :timestamp
    end
  end
end
