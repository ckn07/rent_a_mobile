class AddContentToMobiles < ActiveRecord::Migration[5.2]
  def change
    add_column :mobiles, :content, :text
  end
end
