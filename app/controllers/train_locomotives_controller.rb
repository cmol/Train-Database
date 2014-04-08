class TrainLocomotivesController < ApplicationController
  before_action :set_train_locomotive, only: [:show, :edit, :update, :destroy]

  # GET /train_locomotives
  # GET /train_locomotives.json
  def index
    @train_locomotives = TrainLocomotive.all
  end

  # GET /train_locomotives/1
  # GET /train_locomotives/1.json
  def show
  end

  # GET /train_locomotives/new
  def new
    @train_locomotive = TrainLocomotive.new
  end

  # GET /train_locomotives/1/edit
  def edit
  end

  # POST /train_locomotives
  # POST /train_locomotives.json
  def create
    @train_locomotive = TrainLocomotive.new(train_locomotive_params)

    respond_to do |format|
      if @train_locomotive.save
        format.html { redirect_to @train_locomotive, notice: 'Train locomotive was successfully created.' }
        format.json { render action: 'show', status: :created, location: @train_locomotive }
      else
        format.html { render action: 'new' }
        format.json { render json: @train_locomotive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /train_locomotives/1
  # PATCH/PUT /train_locomotives/1.json
  def update
    respond_to do |format|
      if @train_locomotive.update(train_locomotive_params)
        format.html { redirect_to @train_locomotive, notice: 'Train locomotive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @train_locomotive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /train_locomotives/1
  # DELETE /train_locomotives/1.json
  def destroy
    @train_locomotive.destroy
    respond_to do |format|
      format.html { redirect_to train_locomotives_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_locomotive
      @train_locomotive = TrainLocomotive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def train_locomotive_params
      params.require(:train_locomotive).permit(:operator_id, :locomotive_class_name, :locomotive_class_number, :make_id, :locomotive_type_id, :box_number, :owner_id, :price, :decoder_id, :decoder_address, :picture, :delete_image)
    end
end
