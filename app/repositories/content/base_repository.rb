module Content
  class BaseRepository
    attr_reader :client

    def initialize
      @client = Contentful::Client.new(
        access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
        space: ENV['CONTENTFUL_SPACE_ID']
      )
    end
  end
end
