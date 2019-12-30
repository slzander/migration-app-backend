class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.date :date
      t.float :latitude
      t.float :longitude
      t.references :bird, null: false, foreign_key: true

      t.timestamps
    end
  end
end
