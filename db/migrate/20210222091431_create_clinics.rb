class CreateClinics < ActiveRecord::Migration[6.0]
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :location
      t.string :open_hours
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.text :specialities

      t.timestamps
    end
  end
end
