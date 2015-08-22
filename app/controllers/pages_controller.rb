class PagesController < ApplicationController
  
  def home

  end

  def busAPI
  	@businesses = Business.all
  	render :json => @businesses
  end
  
end
