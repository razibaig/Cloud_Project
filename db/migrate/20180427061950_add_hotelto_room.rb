class AddHoteltoRoom < ActiveRecord::Migration[5.1]
  def change
  	add_column :rooms, :hotel_id, :integer
  end
end
