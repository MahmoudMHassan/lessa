class PostController < ApplicationController
  def index
    @posts = Post.all
    
  end

  def delete
      Post.destroy(params[:id])
      redirect_to '/post/index'
  end

  def new
       @post = Post.new(params.require(:post).permit(:title, :text))
       @post.save
       redirect_to '/post/index'
  end
end
