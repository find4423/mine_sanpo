class ActivesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @actives = @user.actives
    @steps = Active.where(user_id: @user.id).group(:user_id).sum(:step)
  end

  def create
    step = Active.create(active_params)
    redirect_to "/actives/#{current_user.id}"
  end

  def destroy
    step = Active.find(params[:id])
    step.destroy
    redirect_to active_path(current_user.id)
  end

  private

  def active_params
    params.permit(:step).merge(user_id: current_user.id)
  end

  def action_destroy
    step = Active.find(params[:id])
    redirect_to root_path unless user_signed_in? && current_user.id == step.user_id
  end
end
