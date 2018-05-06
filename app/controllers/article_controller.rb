class ArticleController < ApplicationController
  include ::AutoInject['conteudo.article_repository']

  def show
    @article = ::ArticlePresenter.new(find_article(params[:id]))
  end

  private

  def find_article(id)
    article_repository.find(id)
  end
end
