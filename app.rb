require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/numword')

get('/') do
  erb(:form)
end

get('/results') do
  @number = params.fetch('number')
  erb(:results)
end
