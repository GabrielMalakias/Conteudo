module Content
  class BaseRepository
    attr_reader :client

    def initialize
      @client = Contentful::Client.new(
        access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
        space: ENV['CONTENTFUL_SPACE_ID'],
        max_include_resolution_depth: 3
      )
    end
  end
end
