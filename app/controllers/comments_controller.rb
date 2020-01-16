class CommentsController < ApplicationController

  def new
  end

  def create
    # @order = Order.find params[:order_id]
    # @comment = @order.comments.create params[:comment].permit(:name, :comment)

    # raise 'hell'
    # For future refactor
    # Use strong params
    # Hint: these can be found in the user controller e.g.
    Comment.create comment: params[:comment][:comment], order_id: params[:comment][:order_id]


    redirect_to order_path(params[:comment][:order_id])

  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @order = Order.destroy params[:id]
    @comment = @order.comments.find params[:id]

    @comment.destroy
    redirect_to order_path(@order)
  end

end
