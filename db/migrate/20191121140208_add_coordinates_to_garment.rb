class AddCoordinatesToGarment < ActiveRecord::Migration[5.2]
  def change
    add_column :garments, :latitude, :float
    add_column :garments, :longitude, :float
  end
end
