module Admin
  class CategoriesController < ApplicationController

    before_filter :authenticate_user!
    before_action :set_category, only: [:edit, :show, :update, :destroy]
    layout 'adminterface'
    def index
      @categories = Category.all
      respond_to do |format|
      format.html
      format.json {render json: categories}
      end
    end

    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)

      respond_to do |format|
        if @category.save
          format.html { redirect_to [ 'admin', @category ], notice: 'Se ha creado una nueva categoría'}
        else
          format.html { render :new }
        end
      end
    end

    def edit
    end

    def show
    end

    def update
      respond_to do |format|
        if @category.update(category_params)
          format.html { redirect_to ['admin',@category], notice: 'Se ha actualizado la categoría'}
        else
          format.html { render :new}
        end
      end
    end

    def destroy
      respond_to do |format|
        if @category.destroy
          format.html { redirect_to admin_categories_url, notice: "La categoria se ha  eliminado" }
        else
          format.html { render :index, notice: "La categoría no se elimino" }
        end
      end
    end

    private
      def category_params
        params.require(:category).permit(:nombre_categoria)
      end
      def set_category
        @category =  Category.find(params[:id])
      end

  end
end
