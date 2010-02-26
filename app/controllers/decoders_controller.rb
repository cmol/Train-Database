class DecodersController < ApplicationController
  def index
    @decoders = Decoder.all
  end
  
  def show
    @decoder = Decoder.find(params[:id])
  end
  
  def new
    @decoder = Decoder.new
  end
  
  def create
    @decoder = Decoder.new(params[:decoder])
    if @decoder.save
      flash[:notice] = "Successfully created decoder."
      redirect_to @decoder
    else
      render :action => 'new'
    end
  end
  
  def edit
    @decoder = Decoder.find(params[:id])
  end
  
  def update
    @decoder = Decoder.find(params[:id])
    if @decoder.update_attributes(params[:decoder])
      flash[:notice] = "Successfully updated decoder."
      redirect_to @decoder
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @decoder = Decoder.find(params[:id])
    @decoder.destroy
    flash[:notice] = "Successfully destroyed decoder."
    redirect_to decoders_url
  end
end
