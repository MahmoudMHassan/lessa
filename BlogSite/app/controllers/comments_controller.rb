class CommentsController < ApplicationController
def show
    @comment = Comment.find(params[:id])
  end
  def create
    if self.current_user==nil
      redirect_to '/home'
    else
    
     @comment = Comment.new(params.require(:comment).permit(:text))
    @comment.auid = self.current_user.id
     if @comment.save
     redirect_to "/comments/#{@comment.id}"
     else
       render 'new'
     end
  end
  end
  def new
    @comment= Comment.new
      if self.current_user==nil
      redirect_to '/home'
      end
     end
     def browse
     @comments = Comment.all.order('created_at DESC')
  end
  
end
