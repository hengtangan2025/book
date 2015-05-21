require 'sessions_helper'

class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user
    else
      redirect_to login_url, :alert => "Invalid user/password combination"
    end
  end

  def destroy
    log_out
    redirect_to root_url, :notice => "Logged out"
  end
end