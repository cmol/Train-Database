class TrainCarsController < ApplicationController
  before_action :set_train_car, only: [:show, :edit, :update, :destroy]

  # GET /train_cars
  # GET /train_cars.json
  def index
    @train_cars = TrainCar.all
  end

  # GET /train_cars/1
  # GET /train_cars/1.json
  def show
  end

  # GET /train_cars/new
  def new
    @train_car = TrainCar.new
  end

  # GET /train_cars/1/edit
  def edit
  end

  # POST /train_cars
  # POST /train_cars.json
  def create
    @train_car = TrainCar.new(train_car_params)

    respond_to do |format|
      if @train_car.save
        format.html { redirect_to @train_car, notice: 'Train car was successfully created.' }
        format.json { render action: 'show', status: :created, location: @train_car }
      else
        format.html { render action: 'new' }
        format.json { render json: @train_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /train_cars/1
  # PATCH/PUT /train_cars/1.json
  def update
    respond_to do |format|
      if @train_car.update(train_car_params)
        format.html { redirect_to @train_car, notice: 'Train car was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @train_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /train_cars/1
  # DELETE /train_cars/1.json
  def destroy
    @train_car.destroy
    respond_to do |format|
      format.html { redirect_to train_cars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_car
      @train_car = TrainCar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def train_car_params
      params.require(:train_car).permit(:operator_id, :car_class_name, :car_class_number, :make_id, :car_type_id, :box_number, :owner_id, :price, :picture, :delete_image)
    end
end
