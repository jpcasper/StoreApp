class CartedProductsController < ApplicationController

  def index

  end

  def create
    @carted_products = CartedProduct.create(
    quantity: params[:quantity]
    supply_id: params[:supply_id]
    user_id: current_user.id
    status: "carted"
    )
  end

    carted_products.save
  
end
