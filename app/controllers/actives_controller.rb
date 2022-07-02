class ActivesController < ApplicationController

  def create
    step = Active.create(active_params)
    render json:{ step: step }
  end

  private
  def active_params
    params.permit(:step).merge(user_id: current_user.id)
  end
end
