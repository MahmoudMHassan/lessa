class PostsController < ApplicationController
  def new
     @post = Post.new(params.require(:post).permit(:title, :text))
     @post.save
  end

  def edit
  end

  def delete
    @post = Post.where("post_id => ?", params[:post_id])
     @post = Post.find(params[:id]).destroy
    flash[:success] = "Post deleted"
    redirect_to '/post/index/'

  end

  def index
     @posts = Post.all
  end
end
