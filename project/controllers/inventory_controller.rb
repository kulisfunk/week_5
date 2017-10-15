require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/artist.rb')
require_relative('../models/album.rb')

get '/inventory' do
  @artists = Artist.all()
  @albums = Album.all()
  erb(:"inventory/index")
end
