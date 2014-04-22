class DecodersController < ApplicationController
  before_action :set_decoder, only: [:show, :edit, :update, :destroy]

  # GET /decoders
  # GET /decoders.json
  def index
    @decoders = Decoder.all
  end

  # GET /decoders/1
  # GET /decoders/1.json
  def show
  end

  # GET /decoders/new
  def new
    @decoder = Decoder.new
  end

  # GET /decoders/1/edit
  def edit
  end

  # POST /decoders
  # POST /decoders.json
  def create
    @decoder = Decoder.new(decoder_params)

    respond_to do |format|
      if @decoder.save
        format.html { redirect_to @decoder, notice: 'Decoder was successfully created.' }
        format.json { render action: 'show', status: :created, location: @decoder }
      else
        format.html { render action: 'new' }
        format.json { render json: @decoder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /decoders/1
  # PATCH/PUT /decoders/1.json
  def update
    respond_to do |format|
      if @decoder.update(decoder_params)
        format.html { redirect_to @decoder, notice: 'Decoder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @decoder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /decoders/1
  # DELETE /decoders/1.json
  def destroy
    @decoder.destroy
    respond_to do |format|
      format.html { redirect_to decoders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_decoder
      @decoder = Decoder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def decoder_params
      params.require(:decoder).permit(:name)
    end
end
