class CreateCopies < ActiveRecord::Migration[6.0]
  def change
    create_table :copies do |t|
      t.belongs_to :book, null: false, foreign_key: true
      t.belongs_to :library_location, null: false, foreign_key: true
      
      t.column :name, :string
      t.column :checked_out, :boolean
      t.column :condition, :string
    end
  end
end
