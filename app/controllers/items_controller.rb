class ItemsController < ApplicationController
  def index
  end
  def create
    item = Item.create( params[:item] )
    redirect_to item_path(item)
  end
  def show
    @item = Item.find( params[:id])
  end
end 