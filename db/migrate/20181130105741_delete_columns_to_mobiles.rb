class DeleteColumnsToMobiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :mobiles, :grade
    remove_column :mobiles, :earphones
    remove_column :mobiles, :charger
  end
end
