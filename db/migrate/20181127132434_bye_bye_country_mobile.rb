class ByeByeCountryMobile < ActiveRecord::Migration[5.2]
  def change
    rename_column :mobiles, :phone_country, :mobile_location
  end
end
