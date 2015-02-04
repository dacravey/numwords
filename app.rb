require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/numword')
require('pry')

get('/') do
  erb(:form)
end

get('/results') do
  @entered_word = params.fetch('entered_word')
  erb(:results)
end
