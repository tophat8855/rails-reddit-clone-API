class PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post
    end
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.save
      render json: @post
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      head :no_content
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :username, :description, :link)
  end
end
