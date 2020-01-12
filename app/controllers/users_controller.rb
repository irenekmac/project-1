class UsersController < ApplicationController

  # # Certain pages are visible only to logged-in users:
  # before_action :check_if_logged_in, except: [:new]
  #
  # # Lock down admin pages
  # before_action :check_if_admin, only: [:index]

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params # strong params

    if @user.persisted?
      session[:user_id] = @user.id #log them in automatically!
      redirect_to user_path(@user.id)
    else
      flash[:errors] = @user.errors.full_messages #ActiveRecord has set these errors

      render :new
    end

  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit( :name, :email, :password, :password_confirmation)
  end

end
