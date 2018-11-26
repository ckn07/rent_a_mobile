class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :minDate
      t.date :maxDate
      t.integer :total_price
      t.references :user, foreign_key: true
      t.references :mobile, foreign_key: true
      t.integer :duration

      t.timestamps
    end
  end
end
