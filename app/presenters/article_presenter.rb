class ArticlePresenter
  extend Forwardable

  def initialize(article)
    @article = article
  end

  def content
    Kramdown::Document.new(@article.content).to_html
  end

  def_delegator :@article, :title, :title
end
