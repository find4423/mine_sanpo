class PostsController < ApplicationController
  before_action :post_destroy, only: :destroy
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
      redirect_to root_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:text, :image).merge(user_id: current_user.id)
  end

  def post_destroy
    if user_signed_in? && current_user.id == post.user_id
    end
    redirect_to root_path
  end
end
