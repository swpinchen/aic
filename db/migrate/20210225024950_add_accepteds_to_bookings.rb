class AddAcceptedsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :accepted, :boolean, default: false
  end
end
