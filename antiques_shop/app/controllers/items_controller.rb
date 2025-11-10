class ItemsController < ApplicationController
  def index
    if params[:search].present?
      @items = Item.where("name ILIKE ?", "%#{params[:search]}%")
      @search_query = params[:search]
    else
      @items = Item.all
    end
  end

  def show
    @item = Item.find(params[:id])
  end
end
