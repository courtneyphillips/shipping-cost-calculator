require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  length        = params.fetch('length').to_i()
  width         = params.fetch('width').to_i()
  height        = params.fetch('height').to_i()
  weight        = params.fetch('weight').to_i()
  distance      = params.fetch('distance').to_i()
  gift_wrapping = nil

  if params.include?('gift-wrapping')
    gift_wrapping = true
  else
    gift_wrapping = false
  end

  @result = Parcel.new(length, width, height, weight, distance, gift_wrapping).ship_cost()

  erb(:result)
end
