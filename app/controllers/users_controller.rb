class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :search_user

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.where.not(id: current_user.id)
    @user = User.find(current_user.id)
  end

  def search
    @results = @q.result
    @user = User.find(current_user.id)
  end

  private

  def search_user
    @q = User.where.not(id: current_user.id).ransack(params[:q])
  end

end