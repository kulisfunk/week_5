require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/artist.rb')
require_relative('../models/album.rb')
require_relative('../models/genre.rb')

get '/inventory' do
  @artists = Artist.all()
  @albums = Album.all()
  @genres = Genre.all()
  erb(:"inventory/index")
end
