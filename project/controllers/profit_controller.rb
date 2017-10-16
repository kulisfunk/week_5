require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album.rb')

get '/profit' do
  @albums = Album.all()
  erb (:"/profit/profit")
end
