class UsersController < ApplicationController
  before_filter :require_user
  before_filter :is_admin, :only => [:index, :show, :new, :create, :destoy]
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Successfully created user."
      redirect_to users_path
    else
      render :action => 'new'
    end
  end
  
  def edit
  	if current_user.login == "cmol" && params[:id].to_i
  		@user = User.find(params[:id])
  	else
    	@user = current_user
    end
  end
  
  def update
    if current_user.login == "cmol" && params[:id].to_i
  		@user = User.find(params[:id])
  	else
    	@user = current_user
    end
    
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated user."
      redirect_to trains_path
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "Successfully destroyed user."
    redirect_to users_url
  end
end
