class CategoriesController < ApplicationController
  def index
    @categories = Category.all

    if params[:search].present?
      @items = Item.where("name ILIKE ?", "%#{params[:search]}%")
      @search_query = params[:search]
    else
      @items = Item.all
    end
  end

  def show
    @category = Category.find(params[:id])
    @items = @category.items
  end
end
