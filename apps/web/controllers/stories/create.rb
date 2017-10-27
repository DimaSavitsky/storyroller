module Web::Controllers::Stories
  class Create
    include Web::Action

    def call(params)
      StoryRepository.new.create(params[:story])
      redirect_to '/stories'
    end
  end
end
