class PostsController < ApplicationController
  respond_to :html

  def index
    respond_with @posts = Post.all
  end
  
  def show
  end

  def new
    respond_with @post = Post.new
  end

  def create
    post_params = params.require(:post).permit(:title, :content)

    respond_with @post = Post.create(post_params), location: posts_path
  end

end