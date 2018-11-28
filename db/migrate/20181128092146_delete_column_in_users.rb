class DeleteColumnInUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :postcode
    remove_column :users, :city
    remove_column :users, :user_location
  end
end
