class LocomotiveTypesController < ApplicationController
  before_action :set_locomotive_type, only: [:show, :edit, :update, :destroy]

  # GET /locomotive_types
  # GET /locomotive_types.json
  def index
    @locomotive_types = LocomotiveType.all
  end

  # GET /locomotive_types/1
  # GET /locomotive_types/1.json
  def show
  end

  # GET /locomotive_types/new
  def new
    @locomotive_type = LocomotiveType.new
  end

  # GET /locomotive_types/1/edit
  def edit
  end

  # POST /locomotive_types
  # POST /locomotive_types.json
  def create
    @locomotive_type = LocomotiveType.new(locomotive_type_params)

    respond_to do |format|
      if @locomotive_type.save
        format.html { redirect_to @locomotive_type, notice: 'Locomotive type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @locomotive_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @locomotive_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locomotive_types/1
  # PATCH/PUT /locomotive_types/1.json
  def update
    respond_to do |format|
      if @locomotive_type.update(locomotive_type_params)
        format.html { redirect_to @locomotive_type, notice: 'Locomotive type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @locomotive_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locomotive_types/1
  # DELETE /locomotive_types/1.json
  def destroy
    @locomotive_type.destroy
    respond_to do |format|
      format.html { redirect_to locomotive_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locomotive_type
      @locomotive_type = LocomotiveType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locomotive_type_params
      params.require(:locomotive_type).permit(:name)
    end
end
