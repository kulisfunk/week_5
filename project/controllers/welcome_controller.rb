require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/album.rb')

get '/' do
  @albums = Album.all()
  erb (:layout)
end
