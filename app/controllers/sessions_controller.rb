class SessionsController < ApplicationController
  def new
    #redirect_to posts_url if logged_in?
  end

  def create
    if log_in(params[:user][:username], params[:user][:password])
      redirect_to posts_url
    else
      render :new
    end
  end

  def destroy
    log_out
    redirect_to new_session_url
  end
end
