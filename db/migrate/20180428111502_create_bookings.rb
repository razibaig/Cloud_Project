class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true
      t.date :from
      t.date :to
      t.integer :bill

      t.timestamps
    end
  end
end
