class UsersController < ApplicationController
  def index
    @title = params[:title]
    respond_to do |format|
      format.html
      format.js
    end
  end
  def users
    @users = User.all
  end

  def new
    @user = User.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @users = User.all
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html
        format.js
      else
        format.js {render :new}
      end
    end
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
