class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.text :description
      t.integer :price
      t.boolean :is_booked

      t.timestamps
    end
  end
end
