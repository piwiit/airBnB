class AddUserToReservation < ActiveRecord::Migration[6.0]
  def change
    add_reference :reservations, :users, null: false, foreign_key: true
  end
end
