class UsersController < ApplicationController

  # Certain pages are visible only to logged-in users:
  before_action :check_if_logged_in, except: [:new, :create]

  # Lock down admin pages
  before_action :check_if_admin, only: [:index]

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
    @user = User.find params[:id]

  end

  def update
    user = User.find params[:id]

    user = User.update user_params

    redirect_to users_path
  end

  def destroy
    User.destroy params[:id]

   redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit( :name, :dob, :contact, :email, :password, :password_confirmation, :height, :weight, :address, :state, :card_payment, :user_type)
  end

end
