class HotelsController < ApplicationController

  before_action :find_hotel!, only: %i[show destroy edit update]


  def edit
  end


  def update
    if @hotel.update hotel_params
      flash[:success] = "Hotel saved"
      redirect_to hotels_path
    else
      render :edit
    end
  end


  def show
    @room = @hotel.rooms.build
    @rooms = Room.order created_at: :desc
  end


  def destroy
    @hotel.destroy
    flash[:success] = "Hotel deleted!"
    redirect_to hotels_path
  end


  def index
    @hotels = Hotel.all
  end


  def new
    @hotel = Hotel.new
  end


  def create
    @hotel = Hotel.new hotel_params
    if @hotel.save
      flash[:success] = "Hotel saved!"
      redirect_to hotels_path
    else
      render :new
    end
  end



  private

  def hotel_params
    params.require(:hotel).permit(:title, :stars)
  end

  def find_hotel!
    @hotel = Hotel.find params[:id]
  end
end