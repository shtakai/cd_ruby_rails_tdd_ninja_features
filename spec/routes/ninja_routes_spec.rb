require 'spec_helper'

RSpec.describe 'Ninja route', type: :routing do
  it 'get / to ninjas#new' do
    expect(get: '/').to route_to 'ninjas#new'
  end

  it 'post /ninjas to ninjas#create' do
    expect(post: '/ninjas').to route_to 'ninjas#create'
  end
end
