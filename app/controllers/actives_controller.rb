class ActivesController < ApplicationController

  def create
    step = Active.create(active_params)
    render 
  end

  private
  def active_params
    params.permit(:step).merge(user_id: current_user.id)
  end
end
