RSpec.describe Story, type: :entity do
  let(:story_title) { 'Cool Story, Bro' }

  it 'can be initialized with attributes' do
    story = described_class.new(title: story_title)
    expect(story.title).to equal story_title
  end
end
