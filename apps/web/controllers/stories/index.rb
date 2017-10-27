module Web::Controllers::Stories
  class Index
    include Web::Action

    expose :stories

    def call(params)
      @stories = StoryRepository.new.all
    end
  end
end
