require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
require('pry')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/parcel') do
  parcel = Parcel.new(params.fetch('length'), params.fetch('width'), params.fetch('height'), params.fetch('weight'))
  @cost = parcel.cost_to_ship(params.fetch('method'), params.fetch('distance'))
  erb(:parcel)
end
