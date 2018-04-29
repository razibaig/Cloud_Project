class RemoveBiofromUser < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :bio
  	remove_column :users, :profile_picture_url
  end
end
