class ActivesController < ApplicationController

  def create
    step = Active.create(active_params)
    redirect_to "/users/#{current_user.id}"
  end

  private
  def active_params
    params.permit(:step).merge(user_id: current_user.id)
  end
end
