class ChangeColumnCountryName < ActiveRecord::Migration[5.2]
  def change
    rename_column :mobiles, :country, :phone_country
    rename_column :users, :country, :user_country
  end
end
