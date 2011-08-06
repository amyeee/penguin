class ItemsController < ApplicationController
  def index
  end
  def create
    item = Item.new( params[:item] )
    if item.save 
      redirect_to item_path(item)
    else 
      flash.now[:error]='Oops, attach an image silly billy'
      render :index
    end  
  end
  def show
    @item = Item.find( params[:id])
  end
end 