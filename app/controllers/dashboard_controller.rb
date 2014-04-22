class DashboardController < ApplicationController
  def index
    @locomotives = TrainLocomotive.all :order => "id DESC", :limit => "5"
    @cars = TrainCar.all :order => "id DESC", :limit => "5"
  end
end
