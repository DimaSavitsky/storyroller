require 'features_helper'

describe 'List Stories' do
  it 'displays each story on the page' do
    visit '/stories'
    expect(page).to have_css('#stories .story')
  end
end
