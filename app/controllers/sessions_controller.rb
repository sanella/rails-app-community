class SessionsController < ApplicationController

  def new
  end

  def create
    puts 'patka'

    user = User.find_by_email(params[:sessions][:email])
    puts 'user find'
    if user && user.authenticate(params[:sessions][:password])
      puts 'in if'
      session[:user_id] = user.id
      redirect_to root_url
    else
      puts 'in else'
      redirect_to login_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end
