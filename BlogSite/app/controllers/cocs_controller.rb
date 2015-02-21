class CocsController < ApplicationController
 def show
    @coc = Coc.find(params[:id])
  end
  def create
    if self.current_user==nil 
      redirect_to '/home'
    else
    
     @coc= Coc.new(params.require(:coc).permit(:text))
    @coc.auid = self.current_user.id
     if @coc.save
     redirect_to "/cocs/#{@coc.id}"
     else
       render 'new'
     end
  end
  end
  def new
    @coc= Coc.new
      if self.current_user==nil
      redirect_to '/home'
      end
  end
     def browse
     @cocs = Coc.all.order('created_at DESC')
  end
end
