class BusinessesController < ApplicationController
  
  def index
  	@business = Business.all
  	render :index
  end

  def show
  	@bus = Business.find(params[:id])
  	render :show
  end

end
