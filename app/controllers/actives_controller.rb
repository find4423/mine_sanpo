class ActivesController < ApplicationController

  def create
    Active.create(active_params)
    redirect_to user_path(current_user.id)
    # showにもどるようにする
  end

  private
  def active_params
    params.permit(:step).merge(user_id: current_user.id)
  end
end
