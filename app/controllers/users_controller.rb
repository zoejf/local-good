class UsersController < ApplicationController

  # before_filter :authorize, only: [:show]
	
  def new
    if current_user
      redirect_to profile_path
    else
    @user = User.new
    render :new
    end
  end

  def create
    if current_user
      redirect_to profile_path
    else 
      user=User.new(user_params)
  	if user.save 
  		session[:user_id] = user.id
  		redirect_to profile_path
  	else
  		redirect_to pages_home
  	end
    end	
  end

  def show
    render :show
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :phone_number)
    end
end
