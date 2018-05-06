module Content
  class ArticleRepository < BaseRepository
    PER_PAGE = 8

    def per_category(category_id, options = { page: 0 })
      offset = options.fetch(:page) * PER_PAGE

      client.entries(content_type: 'article',
                     'fields.availableOn[match]' => 'infotoss.com',
                     'fields.categories.sys.id[in]' => category_id,
                     'limit' => PER_PAGE ,
                     'skip' => offset,
                     'include' => 0)
    end

    def find(slug)
      client.entries(content_type: 'article',
                     'fields.slug[match]' => slug,
                     'include' => 0).try(:first)
    end
  end
end

