class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :client_name
      t.string :location
      t.date :starting_day
      t.date :last_day

      t.timestamps
    end
  end
end
