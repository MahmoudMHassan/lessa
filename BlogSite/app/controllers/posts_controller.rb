class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end
  def create
    
     @post = Post.new(params.require(:post).permit(:title, :text))
     #@post.aid = @current_user[:id]
     @post.save
     redirect_to '/posts/index'
  end

  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
    @post.update(params[:post].permit(:title, :text))
   redirect_to @post
  end

  def delete
   Post.destroy(params[:id])
   Category.where(pid: params[:id]).destroy_all
    flash.keep
    redirect_to '/posts/index/'

  end

  def index
     @posts = Post.all
  end
end
