class AddOwnersToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :owner, :boolean, default: false
  end
end