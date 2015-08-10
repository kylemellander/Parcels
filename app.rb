require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/parcel') do
  erb(:parcel)
end
