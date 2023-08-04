class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :state
      t.boolean :address
      t.string :service_type

      t.timestamps
    end
  end
end
