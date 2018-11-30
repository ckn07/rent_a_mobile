class AddGradesToMobiles < ActiveRecord::Migration[5.2]
  def change
    add_column :mobiles, :grade, :string, default: "New"
    add_column :mobiles, :earphones, :boolean, null: false, default: false
    add_column :mobiles, :charger, :boolean, null: false, default: false
  end
end
