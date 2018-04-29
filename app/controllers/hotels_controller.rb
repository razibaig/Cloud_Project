class HotelsController < ApplicationController
  def home
  	@hotel = Hotel.last
  	@reviews = @hotel.reviews
  end
end
