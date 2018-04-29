class AddImageId < ActiveRecord::Migration[5.1]
  def change
  	add_column :profiles, :picture_url, :text
  	add_column :roompictures, :picture_url, :text
  end
end
