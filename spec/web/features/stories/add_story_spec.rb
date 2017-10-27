require 'features_helper'

RSpec.describe 'Add a story' do
  let(:new_story_title) { 'New story' }

  it 'can create a new book' do
    visit '/stories/new'

    within 'form#story-form' do
      fill_in 'Title',  with: new_story_title
      click_button 'Create'
    end

    aggregate_failures do
      expect(current_path).to eq('/stories')
      expect(StoryRepository.new.all.last.title).to eq(new_story_title)
    end
  end
end
