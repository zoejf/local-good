class PagesController < ApplicationController
  
  def home
  	@businesses = Business.all
  end

  def busAPI
  	@businesses = Business.all
  	render :json => @businesses
  end
  
end
