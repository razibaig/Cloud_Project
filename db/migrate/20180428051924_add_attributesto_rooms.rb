class AddAttributestoRooms < ActiveRecord::Migration[5.1]
  def change
  	add_column :rooms, :room_number, :integer
  	add_column :rooms, :floor, :integer
  	add_column :rooms, :number_of_beds, :boolean
  	remove_column :rooms, :description
  end
end
