module Content
  class CategoryRepository < BaseRepository
    def all
      client.entries(content_type: 'category',
                     'fields.availableOn[match]' => 'infotoss.com')
    end
  end
end
