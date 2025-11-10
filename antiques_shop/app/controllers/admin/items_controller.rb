class Admin::ItemsController < Admin::BaseController
    before_action :set_item, only: [:show, :edit, :update, :destroy]
    # GET /admin/items
    def index
        @items=Item.all
    end
    # GET /admin/items/1
    def show
    end
    # GET /admin/items/new
    def new
        @item = Item.new
    end

    # POST /admin/items
    def create
        @item = Item.new(item_params)
        if @item.save
            redirect_to admin_item_path(@item), notice: 'Item was sucessfully created.'
        else
            render :new
        end
    end
    # GET /admin/items/1/edit
    def edit
    end

    # PATCH/PUT /admin/items/1
    def update
        if @item.update(item_params)
            redirect_to admin_item_path(@item), notice: 'Item was successfully updated.'
        else
            render :edit
        end
    end

    # DELETE /admin/items/1
    def destroy
        @item.destroy
        redirect_to admin_items_path, notice: 'Item was successfully deleted.'
    end

    def set_item
        @item = Item.find(params[:id])
    end

    def item_params
        params.require(:item).permit(:name, :description, :price, :category_id, :condition, :year_made, :image, :position)
    end
end