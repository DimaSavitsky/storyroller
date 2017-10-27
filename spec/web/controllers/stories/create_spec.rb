RSpec.describe Web::Controllers::Stories::Create, type: :action do
  let(:action) { described_class.new }
  let(:repository) { StoryRepository.new }

  context 'with valid params' do
    let(:params) { Hash[story: {title: 'New title'}] }

    it 'creates a new story' do
      action.call(params)
      book = repository.last

      aggregate_failures do
        expect(book).not_to be_nil
        expect(book.title).to eq(params.dig(:story, :title))
      end
    end

    it 'redirects the user to the stories index' do
      response = action.call(params)

      aggregate_failures do
        expect(response[0]).to eq(302)
        expect(response[1]['Location']).to eq('/stories')
      end
    end
  end
end
