class UsersController < ApplicationController
  def index
    @users = User.all.order(created_at: :desc)
  end

  def show
    @user = User.find params[:id]
  end

  def new
    # add user here
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to [:products], notice: 'Category created!'
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
