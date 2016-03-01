class UsersController < ApplicationController

  before_action :require_user, only: [:index, :show]

  def index
    @users = User.all
  end

  def show
    params.inspect
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      puts 'prvi dio'
      session[:user_id] = @user.id
      puts 'drugi dio'
      redirect_to (users_path())
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if(@user.update_attributes(user_params))
      redirect_to (user_path(@user))
    else
      render :edit
    end
  end
  def destroy
    @user = User.find(params[:id])
    name = @user.name
    @user.destroy
    flash[:notice] = "Product #{name} is deleted"
    redirect_to users_path
  end


  def user_params
    params.require(:user).permit(:name, :surname, :username, :email, :password)
  end
  private :user_params
end
