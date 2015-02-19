class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end
  
  def create
    if self.current_user==nil || !Admin.exists?(self.current_user.id)
      redirect_to '/home'
    else
    
     @post = Post.new(params.require(:post).permit(:title, :text))
     @post.aid = self.current_user.id
     @image= Image.new(params.require(:post).permit(:url))
     @image.save
      if @post.save && @image.save
      redirect_to "/posts/#{@post.id}"
      else
      render 'new'
      end
    end
  end
  
  def new
    @post = Post.new
      if self.current_user==nil || !Admin.exists?(self.current_user.id)
      redirect_to '/home'
      end
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end
  
  def update
    @post = Post.find(params[:id])
   if @post.update(params[:post].permit(:title, :text))
   redirect_to "/posts/#{@post.id}"
   else
     render 'edit'
   end
  end

  def delete
    Post.destroy(params[:id])
    Category.where(pid: params[:id]).destroy_all
    flash.keep
    redirect_to root_path

  end

  def index
     @posts = Post.all.order('created_at DESC')
  end
  def latest
     @posts = Post.all.order('created_at DESC')
  end
 
end
