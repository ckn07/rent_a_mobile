class AddCoordinatesToMobiles < ActiveRecord::Migration[5.2]
  def change
    add_column :mobiles, :latitude, :float
    add_column :mobiles, :longitude, :float
  end
end
