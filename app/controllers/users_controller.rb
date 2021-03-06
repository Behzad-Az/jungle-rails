class UsersController < ApplicationController

  def index
    @users = User.all.order(created_at: :desc)
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to [:root], notice: 'User created!'
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(
      :email,
      :password
    )
  end

end
