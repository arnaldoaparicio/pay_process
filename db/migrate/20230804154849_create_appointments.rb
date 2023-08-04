class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :time
      t.string :location
      t.boolean :approve
      t.integer :deposit
      t.integer :price

      t.timestamps
    end
  end
end
