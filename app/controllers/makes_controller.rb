class MakesController < ApplicationController
  def index
    @makes = Make.all
  end
  
  def show
    @make = Make.find(params[:id])
  end
  
  def new
    @make = Make.new
  end
  
  def create
    @make = Make.new(params[:make])
    if @make.save
      flash[:notice] = "Successfully created make."
      redirect_to @make
    else
      render :action => 'new'
    end
  end
  
  def edit
    @make = Make.find(params[:id])
  end
  
  def update
    @make = Make.find(params[:id])
    if @make.update_attributes(params[:make])
      flash[:notice] = "Successfully updated make."
      redirect_to @make
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @make = Make.find(params[:id])
    @make.destroy
    flash[:notice] = "Successfully destroyed make."
    redirect_to makes_url
  end
end
