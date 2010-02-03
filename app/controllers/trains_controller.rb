class TrainsController < ApplicationController
  before_filter :require_user
  
  def index
    @trains = Train.all :order => "train_type, litra"
  end
  
  def show
    @train = Train.find(params[:id])
  end
  
  def new
    @train = Train.new
  end
  
  def create
    @train = Train.new(params[:train])
    if @train.save
      flash[:notice] = "Materiellet blev oprettet."
      redirect_to trains_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @train = Train.find(params[:id])
  end
  
  def update
    @train = Train.find(params[:id])
    if @train.update_attributes(params[:train])
      flash[:notice] = "Materiellet blev opdateret."
      redirect_to trains_url
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @train = Train.find(params[:id])
    @train.destroy
    flash[:notice] = "Materiellet blev slettet."
    redirect_to trains_url
  end
end
