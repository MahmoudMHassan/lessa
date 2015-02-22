class ImageController < ApplicationController
  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def create

    # build a image and pass it into a block to set other attributes
    @image = Image.new(params.require(:image).permit(:data, :filename, :mime_type)) do |t|
      if params[:image][:data]
        t.data      = params[:image][:data].read
        t.filename  = params[:image][:data].original_filename
        t.mime_type = params[:image][:data].content_type
      end
    end
    
    @image.save

    end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to(images_url)
  end

  def serve
    @photo = Photo.find(params[:id])
    send_data(@image.data, :type => @image.mime_type, :filename => "#{@image.name}.jpg", :disposition => "inline")

  end
  
  
def show_image
    @user = User.find(params[:id])
    send_data @user.image, :type => 'image/png',:disposition => 'inline'
end

  
end