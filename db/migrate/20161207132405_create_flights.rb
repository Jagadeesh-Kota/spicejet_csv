class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :flight_name
      t.string :origin
      t.string :destination
      t.string :frequency
      t.string :flight_num
      t.time :dept_time
      t.time :arrival_time
      t.string :via
      t.date :effective_from
      t.date :effective_till
      t.string :remarks

      t.timestamps
    end
  end
end
