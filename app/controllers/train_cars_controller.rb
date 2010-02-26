class TrainCarsController < ApplicationController
  def index
    @train_cars = TrainCar.all
  end
  
  def show
    @train_car = TrainCar.find(params[:id])
  end
  
  def new
    @train_car = TrainCar.new
  end
  
  def create
    @train_car = TrainCar.new(params[:train_car])
    if @train_car.save
      flash[:notice] = "Successfully created train car."
      redirect_to @train_car
    else
      render :action => 'new'
    end
  end
  
  def edit
    @train_car = TrainCar.find(params[:id])
  end
  
  def update
    @train_car = TrainCar.find(params[:id])
    if @train_car.update_attributes(params[:train_car])
      flash[:notice] = "Successfully updated train car."
      redirect_to @train_car
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @train_car = TrainCar.find(params[:id])
    @train_car.destroy
    flash[:notice] = "Successfully destroyed train car."
    redirect_to train_cars_url
  end
end