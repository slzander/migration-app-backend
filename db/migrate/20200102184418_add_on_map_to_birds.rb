class AddOnMapToBirds < ActiveRecord::Migration[6.0]
  def change
    add_column :birds, :on_map, :boolean
  end
end
