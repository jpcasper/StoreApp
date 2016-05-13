class ItemsController < ApplicationController
 
  def index
    @items = Supply.all
  end

  def show
    @item = Supply.find(params[:id])
  end

  def new

  end

  def create
    @item = Supply.create(
      name: params[:name],
      price: params[:price],
      description: params[:description], 
      image: params[:image]
      )

    render 'show.html.erb'
   end

   def edit
    @item = Supply.find_by.(id: params[:id])
  end

  def update
    @item = Supply.find_by.(id: params[:id])

    @item.update(
      name: params[:name],
      price: params[:price],
      description: params[:description], 
      image: params[:image]
      )

    render 'show.html.erb'
  end
end
