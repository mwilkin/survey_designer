require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
require('./lib/#')
require('./lib/#')
also_reload('lib/**/*.rb')
require('pg')
require('pry')

get('/') do
  @surveys = Survey.all()
  erb(:index)
end
