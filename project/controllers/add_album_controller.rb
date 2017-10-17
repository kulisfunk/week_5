require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/artist.rb')
require_relative('../models/album.rb')


get '/add_album/new' do
  @artists = Artist.all
  @albums = Album.all
  @genres = Genre.all
  erb(:"add_album/new")
end

post '/add_album/add_new' do
  album = Album.new(params)
  album.save()
  redirect to(:"add_album/new")
end

post '/add_album/delete_album' do
  album = Album.find(params[:album_id])
  album.delete()
  redirect to(:"add_album/new")
end
