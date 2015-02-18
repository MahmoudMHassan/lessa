class PostsController < ApplicationController
  def create
    
     @post = Post.new(params.require(:post).permit(:title, :text))
     @post.aid = @current_user['id']
     @post.save
     redirect_to '/posts/index'
  end

  def edit
  end

  def delete
   Post.destroy(params[:id])
   Category.where(pid: params[:id]).destroy_all
    flash.keep
    redirect_to '/posts/index'

  end

  def index
     @posts = Post.all
  end
end
