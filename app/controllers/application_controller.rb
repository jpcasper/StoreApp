class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :calculate_cart_count, only: [:index, :new, :show, :edit, :random]

  private
    def calculate_cart_count
      if user_signed_in?
        if session[:cart_count]
          @cart_count = [:cart_count]
          else
               @cart_count = current_user.carted_items.count 
               session[:cart_count] = @cart_count  
          end
        else
          @cart_count = 0
      end
  end

  private

  def authenticate_admin!
    unless user_signed_in? && current_user.admin
      redirect_to '/'
    end
  end
end
