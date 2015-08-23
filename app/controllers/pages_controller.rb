class PagesController < ApplicationController
  
  def home
  	@businesses = Business.all
  end

  def busAPI
  	@businesses = Business.all
  	render :json => @businesses
  end

  def show
  	@bus = Business.find(params[:id])
  	render :show
  end
  
end
