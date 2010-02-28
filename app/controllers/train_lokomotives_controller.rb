class TrainLokomotivesController < ApplicationController
  def index
    @train_lokomotives = TrainLokomotive.all :include => "operator", :order => "operators.name, lokomotive_class_name, lokomotive_class_number"
  end
  
  def show
    @train_lokomotive = TrainLokomotive.find(params[:id])
  end
  
  def new
    @train_lokomotive = TrainLokomotive.new
  end
  
  def create
    @train_lokomotive = TrainLokomotive.new(params[:train_lokomotive])
    if @train_lokomotive.save
      flash[:notice] = "Successfully created train lokomotive."
      redirect_to @train_lokomotive
    else
      render :action => 'new'
    end
  end
  
  def edit
    @train_lokomotive = TrainLokomotive.find(params[:id])
  end
  
  def update
    @train_lokomotive = TrainLokomotive.find(params[:id])
    if @train_lokomotive.update_attributes(params[:train_lokomotive])
      flash[:notice] = "Successfully updated train lokomotive."
      redirect_to @train_lokomotive
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @train_lokomotive = TrainLokomotive.find(params[:id])
    @train_lokomotive.destroy
    flash[:notice] = "Successfully destroyed train lokomotive."
    redirect_to train_lokomotives_url
  end
end
