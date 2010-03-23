class DashboardController < ApplicationController
  before_filter :require_user
  def index
  	@lokomotives = TrainLokomotive.all :order => "id DESC", :limit => "5"
  	@cars = TrainCar.all :order => "id DESC", :limit => "5"
  end

end
