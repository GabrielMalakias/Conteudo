class CategoryController < ApplicationController
  include CategoryHelper
  include ::AutoInject['conteudo.category_repository', 'conteudo.article_repository']

  def index
    @categories = category_repository.all
  end

  def show
    @page = sanitize_page(params.fetch(:page, 0).to_i)

    @articles = find_articles_per_category(params[:id], @page)
  end

  private

  def find_articles_per_category(category_id, page)
    article_repository.per_category(category_id, page: page)
  end
end
