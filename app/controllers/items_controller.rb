class ItemsController < ApplicationController
 
  def index

     @items = Supply.all
     up_sort = params[:up_sort]
     down_sort = params[:down_sort]
     discount_value = params[:discount]
     search_term = params[:search_term]
     category_type = params[:category]

     if category_type
        @items = Category.find_by(name: category_type).supplies
     end

     if search_term
      @items = @items.where("name LIKE ? OR description LIKE ?" ,"%#{search_term}%", "%#{search_term}%")
      end

    if down_sort && up_sort
      @items = Supply.order(up_sort => down_sort)
    elsif up_sort
      @items = Supply.order(up_sort)
    else
      @items = Supply.all
    end

    if discount_value
      @items = @items.where("price < ?", discount_value)
    end
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
      stock: params[:stock]
      )

    flash[:success] = "Item Created"
    redirect_to "/items/#{@item.id}"
   end

   def edit
    @item = Supply.find_by(id: params[:id])
  end

  def update
    @item = Supply.find_by(id: params[:id])

    @item.update(
      name: params[:name],
      price: params[:price],
      description: params[:description], 
      stock: params[:stock]
      )
     flash[:success] = "Item Updated"
    render 'show.html.erb'
  end

  def destroy
    @item = Supply.find_by(id: params[:id])
    @item.destroy

    flash[:warning] = "Item Deleted!"
    redirect_to "/"
  end

  def random
  item = Supply.all.sample

  redirect_to "/items/#{item.id}"
  end
end
