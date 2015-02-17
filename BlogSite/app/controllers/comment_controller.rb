class CommentController < ApplicationController
  def new
     @comment = Comment.new(params.require(:comment).permit(:text))
     @comment.save
     redirect_to '/comment/index'
  end
  
  def create
    
  end

  def destroy
     Comment.destroy(params[:id])
  # Category.where(pid: params[:id]).destroy_all
    flash.keep
    redirect_to '/comment/index'

  end

  def index
     @comments = Comment.all
  end

  def edit
  end
end
