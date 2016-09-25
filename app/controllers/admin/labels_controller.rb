module Admin
  class LabelsController < ApplicationController
    before_action :set_label, only: [:edit, :show, :update, :destroy]
    def index
      @labels = Label.all
    end

    def new
      @label = Label.new
    end

    def create
      @label = Label.new(label_params)
      respond_to do |format|
        if @label.save
          format.html { redirect_to [ "admin", @label ], notice: 'Label creado'}
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
        if @label.update(label_params)
        format.html { redirect_to ["admin",@label], notice: 'El label ha sido actualizado'}
        else
          format.html { render :new}
        end
      end
    end

    def destroy
      respond_to do |format|
        if @label.destroy
          format.html { redirect_to admin_labels_url, notice: "Elemento eliminado" }
        else
          format.html { render :index, notice: "Elemento no eliminado" }
        end
      end
    end

    private
      def label_params
        params.require(:label).permit(:nombre_etiqueta)
      end

      def set_label
        @label = Label.find(params[:id])
      end
  end
end
