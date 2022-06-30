class ActivesController < ApplicationController

  def new
    Active.new
  end

  def create
    Active.create(active_params)
    redirect_to root_path
  end

  private
  def active_params
    params.permit(:step).merge(user_id: current_user.id)
  end
end
