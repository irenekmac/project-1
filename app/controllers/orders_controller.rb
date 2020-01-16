class OrdersController < ApplicationController

  def accept
    order = Order.find params[:id]
    order.update technician_id:@current_user.id

  end

  def new
    @order = Order.new
  end

  def create
    # only patients can create orders and patients
    # when order is created the status field automatically sets to 'quoted'
    @current_user.submitted_orders.create order_params
    # , status: 'quoted'

    redirect_to orders_path

  end

  def index
    # only admin can see all orders
    # @orders = Order.all

    @unassigned_orders = Order.where technician_id:nil

    # @current_technician = Order.where technician_id: @current_user.id
  end

  def show
    @order = Order.find params[:id]

    @unassigned_orders = Order.where technician_id:nil

    @comment = Comment.new
  end

  def edit
    # Only admin and technician can edit orders
    @order = Order.find params[:id]
    # check_ownership

  end

  def update

    @order = Order.find params[:id]
    @order.update order_params

    # Do update here
    redirect_to orders_path
    # and return unless @order.patient == @current_user

    puts "~~~~~~~~~~~~~~~~ ORDER UPDATED ~~~~~~~~~~~~~~~~"

  end

  def destroy
    Order.destroy params[:id]

    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit( :item_size, :surgeon, :surgery_date, :delivery_date, :health_fund, :time_of_posturing, :health_problems, :status )
  end

  def check_ownership
    redirect_to login_path and return unless @order.user == @current_user
  end

end
