class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :safari, null: false, foreign_key: true
      t.string :bookingDate
      t.string :numberofPersons
      t.float :totalAmount

      t.timestamps
    end
  end
end
