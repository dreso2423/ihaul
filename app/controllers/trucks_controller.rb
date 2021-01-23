class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
  end

  def show
    @truck = Truck.find(params[:id])
  end

  def edit
    @truck = Truck.find(params[:id])
  end

  def new
    @truck = Truck.new
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
    params.require(:truck).permit(:name, :description, :size, :price, :make, :model, :color)
  end
end
