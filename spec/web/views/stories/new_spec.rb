RSpec.describe Web::Views::Stories::New, type: :view do
  let(:exposures) { Hash[params: {}] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/stories/new.html.slim') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'shows a story form' do
    expect(rendered).to have_css('form .controls')
  end
end
