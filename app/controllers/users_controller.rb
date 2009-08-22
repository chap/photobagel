class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.all

  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find_by_permalink!(params[:user_id])
		if params[:photo_id]
			@photo = @user.photos.find_by_taken_at!(params[:photo_id])
		else
			@photo = @user.newest_photo
		end
		render :layout => 'photo'
  end
end
