class BusinessesController < ApplicationController

  def index
  end

  def show
    @business = Business.find(params[:id])
  end

end
