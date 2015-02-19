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
      
      @image = Image.new(params[:image]) do |t| 
        if params[:image][:data]
        t.data = params[:image][:data].read
        t.filename = params[:image][:data].original_filename
        t.mime_type = params[:image][:data].content_type
      end
    end
    
      if @post.save
        redirect_to "/posts/#{@post.id}"
      else
        render 'new'
      end
    end
  end
  
 def new
    @post = Post.new
    @image = Image.new
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
  
   def serve
    @photo = Photo.find(params[:id])
    send_data(@photo.data, :type => @photo.mime_type, :filename => "#{@photo.name}.jpg", :disposition => "inline")
  end
  
end