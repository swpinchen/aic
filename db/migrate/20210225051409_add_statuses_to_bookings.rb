class AddStatusesToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :status, :int, default: 0
  end
end
