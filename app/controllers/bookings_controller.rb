class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
  	@bookings = Booking.where(user_id:params[:id])
  end

  def create
  	@booking = Booking.new(set_booking_params)
  	@room = Room.find(params[:room_id])
  	@booking.room = @room  
  	@booking.user = User.find(params[:user_id])
  	@room.is_booked = false
    days = (@booking.to.to_date - @booking.from.to_date).to_i
    if days > 0
      @booking.bill = (@room.price*days)
      @booking.save
      redirect_to "/bookings/#{current_user.id}/index", notice: 'Room was successfully booked.'
    else
      redirect_to "/rooms/#{@room.id}/bookings/#{current_user.id}/new", notice: 'invalid Date inputs' 
  	end
  end

  def new
  	@booking = Booking.new
    @room = Room.find(params[:room_id])
  end

  private
  def set_booking_params
  	params.require(:booking).permit(:from,:to)
  end

end
