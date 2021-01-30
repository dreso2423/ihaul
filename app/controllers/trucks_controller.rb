class TrucksController < ApplicationController
  def index

    if params[:query].present?
      @trucks = Truck.search_by_name(params[:query])
    else
      @trucks = Truck.all
    end

    #  agregamos search feature
    # raise
    @markers = @trucks.geocoded.map do |truck|
      {
        lat: truck.latitude,
        lng: truck.longitude
      }
    end
  end

  def index_trucks
    @trucks = Truck.where(owner: current_user)
  end

  def show
    @truck = Truck.find(params[:id])
    @booking = Booking.new
  end

  def edit
    @truck = Truck.find(params[:id])
  end

  def new
    @truck = Truck.new
    @sizes = [12, 24, 48, 53]
  end

  def create
    @truck = Truck.new(truck_params)
    @truck.owner = current_user
    if @truck.save
      redirect_to truck_path(@truck)
    else
      render :new
    end
  end

  def update
    @truck = Truck.find(params[:id])
    if @truck.update(truck_params)
      redirect_to truck_path(@truck)
    else
      render :edit
    end
  end

  def destroy
    @truck = Truck.find(params[:id])
    @truck.destroy
    redirect_to truck_path(@truck)
  end



  private

  def truck_params
    params.require(:truck).permit(:name, :description, :size, :price, :make, :model, :color, :address)
  end
end
