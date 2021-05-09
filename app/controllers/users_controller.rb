class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :search_user

  def show
    @user = User.find(params[:id])
    date_format = "%Y%m%d"
    birthday = @user.birthday.to_date
    @age = (Date.today.strftime(date_format).to_i - birthday.strftime(date_format).to_i) / 10000
  end

  def index
    @users = User.where.not(id: current_user.id)
    @user = User.find(current_user.id)
  end

  def search
    @results = @q.result.order("created_at DESC") 
    @user = User.find(current_user.id)
  end

  private

  def search_user
    @q = User.ransack(params[:q])
  end

end