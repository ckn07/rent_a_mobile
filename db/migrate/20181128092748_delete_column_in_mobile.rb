class DeleteColumnInMobile < ActiveRecord::Migration[5.2]
  def change
  remove_column :mobiles, :postcode
  remove_column :mobiles, :city
  remove_column :mobiles, :mobile_location
  end
end
