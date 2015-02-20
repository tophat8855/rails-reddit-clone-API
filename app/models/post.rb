class Post < ActiveRecord::Base
  def index
    @posts = Post.all
  end
end
