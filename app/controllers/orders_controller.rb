class OrdersController < ApplicationController

  def create

    @order = Order.new(
      quantity: params[:quantity],
      supply_id: params[:supply_id],
      user_id: current_user.id
      )

   
    @order.calculate_figures(@order.supply.price)
    @order.save

    flash[:success] = "Order Created!"
    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find(params[:id])
    @item = Supply.find(@order.supply_id)
    
  end
end
