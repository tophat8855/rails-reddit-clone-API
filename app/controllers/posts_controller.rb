class PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: @posts
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(not_params)
    if @post.save
      render json: @post
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      render json: @post
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :username, :description, :link)
  end
end
