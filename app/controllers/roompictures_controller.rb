class RoompicturesController < ApplicationController
  def index
  	@picture = Roompicture.where(room_id: params[:room_id])
  	@room = Room.find(params[:room_id])
  end

  def add_picture
    @room = Room.find(params[:room_id])
    @roompicture = Roompicture.new
    if params[:image_id].present?
      preloaded = Cloudinary::PreloadedFile.new(params[:image_id])         
      raise "Invalid upload signature" if !preloaded.valid?
      @roompicture.image_id = preloaded.identifier.to_s
      puts "****************************"
      puts preloaded.identifier.class
      puts "****************************"
      puts "****************************"
      puts @roompicture.image_id
      puts "****************************"
    end
    @roompicture.room = @room
    @roompicture.save

    redirect_to room_roompictures_index_path
  end

  def remove_picture
  	@picture = Roompicture.find(params[:id])
  	@picture.destroy
  	redirect_to room_roompictures_index_path
  end

end
