class ActivesController < ApplicationController

  def show
    @user = User.find(params[:id])
    @actives = @user.actives
  end

  def create
    step = Active.create(active_params)
    redirect_to "/users/#{current_user.id}"
  end

  private
  def active_params
    params.permit(:step).merge(user_id: current_user.id)
  end
end
