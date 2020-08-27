class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.integer :trip_id
      t.integer :date

      t.timestamps
    end
  end
end
