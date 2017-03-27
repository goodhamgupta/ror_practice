class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    if post
      flash[:success] = "Your post has been created!"
      redirect_to posts_path
    else
      flash[:alert] = "You dumb piece of shit!"
      redirect_to new_post_path
    end
  end

  def show

  end

  def edit

  end

  def update
    if @post.update(post_params)
      flash[:success] = "Your post has been updated!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "You dumb piece of shit again!"
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to post_path
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
