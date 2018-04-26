class UsersControllerController < ApplicationController

  def new
  end

  def create
  	@username = params[:username]
  	@bio = params[:bio]
  	a = User.new
  	a.username = @username
  	a.bio = @bio
  	a.save
    if a.save == false
      redirect_to rate_path
    else
    	@id = a.id
  	 redirect_to show_path(@username)
    end
  end

  def show
  	@user = User.find_by(username: params[:username])
  	@username = @user.username
  	@bio = @user.bio
  end

  
end
