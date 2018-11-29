class AddStatusToMobiles < ActiveRecord::Migration[5.2]
  def change
        add_column :mobiles, :status, :boolean, default: true, null: false
  end
end
