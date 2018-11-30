class AddColumnstoMobiles < ActiveRecord::Migration[5.2]
  def change
    add_column :mobiles, :grade, :string
    add_column :mobiles, :earphones, :boolean
    add_column :mobiles, :charger, :boolean
  end
end
