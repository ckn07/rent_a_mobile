class AddStatusToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :status, :string, default: "Awaiting Validation", null: false
  end
end
