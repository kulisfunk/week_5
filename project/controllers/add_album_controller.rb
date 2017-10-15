require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/artist.rb')
require_relative('../models/album.rb')


get '/add_album/new' do
  @artists = Artist.all
  @albums = Album.all
  erb(:"add_album/new")
end
