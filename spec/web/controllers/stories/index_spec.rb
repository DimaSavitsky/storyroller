RSpec.describe Web::Controllers::Stories::Index, type: :action do
  let(:action) { Web::Controllers::Stories::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq(200)
  end

  it 'exposes all stories' do
    story = Fabricate(:story)
    action.call(params)
    expect(action.exposures[:stories]).to eq([story])
  end
end
