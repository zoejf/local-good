class PagesController < ApplicationController
  

  def home
  	@business = Business.all
  	render :home
  end

  
end
