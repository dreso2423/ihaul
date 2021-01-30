class BookingsController < ApplicationController
  def create
    @booking = Booking.new(bookings_params)
    @booking.customer = current_user
    @truck = Truck.find(params[:truck_id])
    @booking.truck = @truck
    if @booking.save

      redirect_to trucks_path, notice: "Great we will be in contact shortly"
    else
      flash.alert = "Not available!"
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_time, :end_time, :truck_id)
  end
end
