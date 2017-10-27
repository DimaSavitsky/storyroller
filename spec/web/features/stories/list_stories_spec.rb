require 'features_helper'

RSpec.describe 'List Stories' do
  let(:repository) { StoryRepository.new }
  before do
    3.times { Fabricate(:story) }
  end

  it 'displays each story on the page' do
    visit '/stories'
    aggregate_failures do
      expect(page).to have_css('#stories .story', count: 3)
      repository.all.each do |story|
        within '#stories' do
          expect(page).to have_content(story.title)
        end
      end
    end
  end
end
