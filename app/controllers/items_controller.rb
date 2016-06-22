class ItemsController < ApplicationController
 
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :delete]
 
  
  def index
    @test_token = ENV['test_api_token']
    @test_secret =ENV['test_api_secret']

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
    @item = Supply.new

  end

  def create
    @item = Supply.new(
      name: params[:name],
      price: params[:price],
      description: params[:description], 
      stock: params[:stock]
      )

    if @item.save 
      Image.create(url: params[:image], supply_id: @supply.id) if params[:image] != ""

      flash[:success] = "Item Created"
      redirect_to "/items/#{@item.id}"
    else
      render :new
    end
   end

   def edit
      @item = Supply.find_by(id: params[:id])
    end

  def update
    @item = Supply.find_by(id: params[:id])

    if @item.update(
      name: params[:name],
      price: params[:price],
      description: params[:description], 
      stock: params[:stock]
      )

     flash[:success] = "Item Updated"
    render 'show.html.erb'
    else
      render :edit
    end
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
