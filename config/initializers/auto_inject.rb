module Conteudo
  class Container
    extend Dry::Container::Mixin

    register('conteudo.article_repository') do
      Content::ArticleRepository.new
    end

    register('conteudo.category_repository') do
      Content::CategoryRepository.new
    end
  end
end

AutoInject = Dry::AutoInject(Conteudo::Container)


