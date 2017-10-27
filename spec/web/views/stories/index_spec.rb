RSpec.describe Web::Views::Stories::Index, type: :view do
  let(:template)  { Hanami::View::Template.new('apps/web/templates/stories/index.html.slim') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }
  let(:story_placeholder_message) { 'There are no stories yet.' }

  shared_examples 'stories index template' do
    it 'exposes #stories' do
      expect(view.stories).to equal(exposures.fetch(:stories))
    end
  end

  context 'when there are no stories' do
    let(:exposures) { Hash[stories: []] }

    it_behaves_like 'stories index template'

    it 'shows a placeholder message' do
      expect(rendered).to include(story_placeholder_message)
    end
  end

  context 'when there are stories' do
    let(:exposures) { Hash[stories: 2.times.map { Fabricate(:story) } ] }

    it_behaves_like 'stories index template'

    it 'shows story titles' do
      aggregate_failures do
        exposures.fetch(:stories).each do |story|
          expect(rendered).to include(story.title)
        end
      end
    end

    it 'hides the placeholder message' do
      expect(rendered).not_to include(story_placeholder_message)
    end
  end
end
