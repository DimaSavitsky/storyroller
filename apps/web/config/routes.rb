# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

root to: 'home#index'

get '/stories', to: 'stories#index'
get '/stories/new', to: 'stories#new'
post '/stories', to: 'stories#create'
