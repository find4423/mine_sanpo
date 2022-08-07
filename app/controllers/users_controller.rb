class UsersController < ApplicationController

  before_action :show_destroy, only: :show

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @steps = Active.where(user_id: @user.id).group(:user_id).sum(:step)
  end

  def followings
    user = User.find(params[:id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:id])
    @users = user.followers
  end

  private 

  def show_destroy
    redirect_to new_user_session_path unless user_signed_in?
  end
end