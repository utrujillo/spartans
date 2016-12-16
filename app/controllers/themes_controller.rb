class ThemesController < ApplicationController
  before_filter :set_categories

  def tipo
  end

  def form
  end

  def buttons
  end

  def hyperlink
  end

  private
    def set_categories
      @categories = Category.all
    end
end
