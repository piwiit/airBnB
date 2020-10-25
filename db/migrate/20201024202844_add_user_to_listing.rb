class AddUserToListing < ActiveRecord::Migration[6.0]
  def change
    add_reference :listings, :users, null: false, foreign_key: true
  end
end
