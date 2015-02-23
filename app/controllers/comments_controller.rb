class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    @comment = Comment.new(comment_params)
    if comment.save
      render json: @comment
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      render json: @comment
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      head :no_content
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:post_id, :username, :body)
  end
end
