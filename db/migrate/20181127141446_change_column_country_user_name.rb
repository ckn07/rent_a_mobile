class ChangeColumnCountryUserName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :user_country, :user_location
  end
end
