class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  include SessionsHelper
  def current_user 
    User.find(session[:user_id])
  end

  def current_cart
    Cart.find(user_id:session[:user_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create(user_id:session[:user_id])
    session[:cart_id] = cart.id
    cart
  end
end
