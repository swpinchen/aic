class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :clinic, null: false, foreign_key: true
      t.string :booking_time

      t.timestamps
    end
  end
end
