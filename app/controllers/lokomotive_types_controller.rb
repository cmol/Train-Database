class LokomotiveTypesController < ApplicationController
  def index
    @lokomotive_types = LokomotiveType.all
  end
  
  def show
    @lokomotive_type = LokomotiveType.find(params[:id])
  end
  
  def new
    @lokomotive_type = LokomotiveType.new
  end
  
  def create
    @lokomotive_type = LokomotiveType.new(params[:lokomotive_type])
    if @lokomotive_type.save
      flash[:notice] = "Successfully created lokomotive type."
      redirect_to @lokomotive_type
    else
      render :action => 'new'
    end
  end
  
  def edit
    @lokomotive_type = LokomotiveType.find(params[:id])
  end
  
  def update
    @lokomotive_type = LokomotiveType.find(params[:id])
    if @lokomotive_type.update_attributes(params[:lokomotive_type])
      flash[:notice] = "Successfully updated lokomotive type."
      redirect_to @lokomotive_type
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @lokomotive_type = LokomotiveType.find(params[:id])
    @lokomotive_type.destroy
    flash[:notice] = "Successfully destroyed lokomotive type."
    redirect_to lokomotive_types_url
  end
end
