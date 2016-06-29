require('sinatra')
require('sinatra/reloader')
require('./lib/rps')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/rps') do
  @result = params.fetch('player_one').beats?('player_two')
  erb(:rps_result)
end
