require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  length = params.fetch('length').to_i
  height = params.fetch('height').to_i
  width = params.fetch('width').to_i
  speed = params.fetch('speed').to_i
  weight = params.fetch('weight').to_i
  gift = params.fetch('gift').to_i
  @parcel = Parcel.new(length, height, width, speed, weight, gift)
  erb(:result)
end
