class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    # only patients can create orders and patients
    # when order is created the status field automatically sets to 'quoted'
    @current_user.patient_orders.create order_params, status: 'quoted'

    redirect_to orders_path

  end

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find params[:id]
  end

  def edit
    # Only admin and technician can edit orders
    @order = Order.find params[:id]
    # check_ownership

  end

  def update

    @order = Order.find params[:id]

    # Do update here
    redirect_to login_path and return unless @order.user == @current_user

    puts "~~~~~~~~~~~~~~~~ ORDER UPDATED ~~~~~~~~~~~~~~~~"

  end

  def destroy
  end

  private

  def order_params
    params.require(:order).permit( :item_size )
  end

  def check_ownership
    redirect_to login_path and return unless @order.user == @current_user
  end

end
