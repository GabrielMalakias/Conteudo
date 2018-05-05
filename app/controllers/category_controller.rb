class CategoryController < ApplicationController
  def index
    @categories = CategoryRepository.new.all
  end

  def show
  end
end
