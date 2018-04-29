class AddAttributestoRooms < ActiveRecord::Migration[5.1]
  def change
  	add_column :rooms, :room_number, :integer
  	add_column :rooms, :floor, :integer
  	add_column :rooms, :has_kitchen, :boolean
  	add_column :rooms, :number_of_beds, :boolean
  	add_column :rooms, :has_AC, :boolean
  	add_column :rooms, :has_TV, :boolean 
  	remove_column :rooms, :description
  end
end
