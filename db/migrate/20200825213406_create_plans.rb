class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.integer :day_id
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
