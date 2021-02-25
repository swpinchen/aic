class RemoveSpecialitiesFromClinics < ActiveRecord::Migration[6.0]
  def change
    remove_column :clinics, :specialities, :text
  end
end
