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

  end
end
