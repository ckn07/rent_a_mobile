class CreateMobiles < ActiveRecord::Migration[5.2]
  def change
    create_table :mobiles do |t|
      t.string :brand
      t.string :model
      t.references :user, foreign_key: true
      t.integer :daily_price
      t.string :photo
      t.string :address
      t.string :postcode
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
