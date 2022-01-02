class RoomsController < ApplicationController

  before_action :find_hotel!

  def create
    # render plain: params
    @room = @hotel.rooms.build room_params
    if @room.save
      flash[:success] = "Room created!"
      redirect_to hotel_path(@hotel)
    else
      @rooms = Room.order created_at: :desc
      render 'hotels/show'
    end
  end

  def destroy
    @room = @hotel.rooms.find params[:id]
    @room.destroy
    flash[:success] = "Room deleted!"
    redirect_to hotel_path(@hotel)
  end

  private

  def room_params
    params.require(:room).permit(:price_per_night, :room_type, :link_img, :bed_type, :number_of_people, :booking_type, :number_of_beds, :food, :comforts)
  end

  def find_hotel!
    @hotel = Hotel.find params[:hotel_id]
  end
end
