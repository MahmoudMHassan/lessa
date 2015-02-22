class TagsController < ApplicationController
  def show
  @tag = Tag.find(params[:id])
end

def index
  @tag = Tag.all.order('created_at DESC')
end
end
