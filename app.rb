require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/numword')
require('pry')

get('/') do
  erb(:form)
end

get('/results') do
  @converted_words = params.fetch('converted_words')
  erb(:results)
end
