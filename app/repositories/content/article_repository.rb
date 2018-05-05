module Content
  class ArticleRepository < BaseRepository
    PER_PAGE = 9

    def all(page = 0)
      offset = page * PER_PAGE

      client
        .entries(content_type: 'article',
                 'fields.availableOn[match]' => 'infotoss.com',
                 'limit' => 9,
                 'skip' => offset,
                 'include' => 0)
    end
  end
end

