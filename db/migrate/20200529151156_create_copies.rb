class CreateCopies < ActiveRecord::Migration[6.0]
  def change
    create_table :copies do |t|

      t.timestamps
    end
  end
end
