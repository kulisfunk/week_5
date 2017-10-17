require_relative( '../models/artist.rb' )
require_relative( '../models/album.rb' )
require_relative( '../models/genre.rb')
require('pry-byebug')

Genre.delete_all()
Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'artist_name' => 'Pink Floyd'
})
artist1.save()

artist2 = Artist.new({
  'artist_name' => 'Underworld'
})
artist2.save()

artist3 = Artist.new({
  'artist_name' => 'Genesis'
})
artist3.save()

artist4 = Artist.new({
  'artist_name' => 'David Bowie'
})
artist4.save()

artist5 = Artist.new({
  'artist_name' => 'Cocteau Twins'
})
artist5.save()

artist6 = Artist.new({
  'artist_name' => 'Depeche Mode'
})
artist6.save()

artist7 = Artist.new({
  'artist_name' => 'Faithless'
})
artist7.save()

artist8 = Artist.new({
  'artist_name' => 'Rush'
})
artist8.save()

artist9 = Artist.new({
  'artist_name' => 'Paul Oakenfold'
})
artist9.save()

artist10 = Artist.new({
  'artist_name' => 'The Jesus and Mary Chain'
})
artist10.save()

genre1 = Genre.new({
   'genre_name' => "Alternative"
   })
genre1.save()

genre2 = Genre.new({
   'genre_name' => "Rock"
   })
genre2.save()

genre3 = Genre.new({
   'genre_name' => "Hard Rock"
   })
genre3.save()

genre4 = Genre.new({
   'genre_name' => "Progressive Rock"
   })
genre4.save()

genre5 = Genre.new({
   'genre_name' => "General Trance"
   })
genre5.save()

genre6 = Genre.new({
   'genre_name' => "Trance"
   })
genre6.save()

genre7 = Genre.new({
   'genre_name' => "Pop"
   })
genre7.save()

genre8 = Genre.new({
   'genre_name' => "Electronica/Dance"
   })
genre8.save()

genre9 = Genre.new({
   'genre_name' => "Dance"
   })
genre9.save()

genre10 = Genre.new({
   'genre_name' => "Progressive Trance"
   })
genre10.save()

genre11 = Genre.new({
   'genre_name' => "House"
   })
genre11.save()

genre12 = Genre.new({
   'genre_name' => "Progressive House"
   })
genre12.save()

genre13 = Genre.new({
   'genre_name' => "Electronic"
   })
genre13.save()

genre14 = Genre.new({
   'genre_name' => "Ambient"
   })
genre14.save()

album1 = Album.new({
  'album_name' => "Animals",
  'genre_id' => genre2.id,
  'quantity' => 6,
  'artist_id' => artist1.id,
  'buy_price' => 8,
  'sell_price' => 15
})
album1.save()

album2 = Album.new({
  'album_name' => "Dark Side of the Moon",
  'genre_id' => genre2.id,
  'quantity' => 2,
  'artist_id' => artist1.id,
  'buy_price' => 10,
  'sell_price' => 15
})
album2.save()

album3 = Album.new({
  'album_name' => "Wish You Were Here",
  'genre_id' => genre2.id,
  'quantity' => 5,
  'artist_id' => artist1.id,
  'buy_price' => 10,
  'sell_price' => 15
})
album3.save()

album4 = Album.new({
  'album_name' => "The Wall",
  'genre_id' => genre2.id,
  'quantity' => 12,
  'artist_id' => artist1.id,
  'buy_price' => 6,
  'sell_price' => 16
})
album4.save()

album5 = Album.new({
  'album_name' => "The Final Cut",
  'genre_id' => genre2.id,
  'quantity' => 10,
  'artist_id' => artist1.id,
  'buy_price' => 10,
  'sell_price' => 15
})
album5.save()

album6 = Album.new({
  'album_name' => "Second Toughest in the Infants",
  'genre_id' => genre8.id,
  'quantity' => 7,
  'artist_id' => artist2.id,
  'buy_price' => 8,
  'sell_price' => 14
})
album6.save()

album7 = Album.new({
  'album_name' => "Dubnobasswithmyheadman",
  'genre_id' => genre8.id,
  'quantity' => 8,
  'artist_id' => artist2.id,
  'buy_price' => 10,
  'sell_price' => 15
})
album7.save()

album8 = Album.new({
  'album_name' => "Beaucoup Fish",
  'genre_id' => genre8.id,
  'quantity' => 7,
  'artist_id' => artist2.id,
  'buy_price' => 8,
  'sell_price' => 14
})
album8.save()

album9 = Album.new({
  'album_name' => "Genesis",
  'genre_id' => genre2.id,
  'quantity' => 1,
  'artist_id' => artist3.id,
  'buy_price' => 6,
  'sell_price' => 10
})
album9.save()

album10 = Album.new({
  'album_name' => "Abacab",
  'genre_id' => genre2.id,
  'quantity' => 12,
  'artist_id' => artist3.id,
  'buy_price' => 7,
  'sell_price' => 10
})
album10.save()

album11 = Album.new({
  'album_name' => "Duke",
  'genre_id' => genre2.id,
  'quantity' => 12,
  'artist_id' => artist3.id,
  'buy_price' => 6,
  'sell_price' => 10
})
album11.save()

album12 = Album.new({
  'album_name' => "Aladdin Sane",
  'genre_id' => genre2.id,
  'quantity' => 10,
  'artist_id' => artist4.id,
  'buy_price' => 5,
  'sell_price' => 10
})
album12.save()

album13 = Album.new({
  'album_name' => "Earthling",
  'genre_id' => genre2.id,
  'quantity' => 7,
  'artist_id' => artist4.id,
  'buy_price' => 7,
  'sell_price' => 11
})
album13.save()

album14 = Album.new({
  'album_name' => "Diamond Dogs",
  'genre_id' => genre2.id,
  'quantity' => 4,
  'artist_id' => artist4.id,
  'buy_price' => 10,
  'sell_price' => 15
})
album14.save()

album15 = Album.new({
  'album_name' => "Scary Monsters",
  'genre_id' => genre2.id,
  'quantity' => 8,
  'artist_id' => artist4.id,
  'buy_price' => 10,
  'sell_price' => 15
})
album15.save()

album16 = Album.new({
  'album_name' => "The Rise and Fall of Ziggy Stardust",
  'genre_id' => genre2.id,
  'quantity' => 1,
  'artist_id' => artist4.id,
  'buy_price' => 10,
  'sell_price' => 17
})
album16.save()

album17 = Album.new({
  'album_name' => "Treasure",
  'genre_id' => genre1.id,
  'quantity' => 1,
  'artist_id' => artist5.id,
  'buy_price' => 8,
  'sell_price' => 14
})
album17.save()

album18 = Album.new({
  'album_name' => "Victorialand",
  'genre_id' => genre1.id,
  'quantity' => 4,
  'artist_id' => artist5.id,
  'buy_price' => 8,
  'sell_price' => 14
})
album18.save()

album19 = Album.new({
  'album_name' => "The Moon and the Melodies",
  'genre_id' => genre1.id,
  'quantity' => 0,
  'artist_id' => artist5.id,
  'buy_price' => 10,
  'sell_price' => 17
})
album19.save()

album20 = Album.new({
  'album_name' => "Construction Time Again",
  'genre_id' => genre1.id,
  'quantity' => 12,
  'artist_id' => artist6.id,
  'buy_price' => 5,
  'sell_price' => 7
})
album20.save()

album21 = Album.new({
  'album_name' => "Black Celebration",
  'genre_id' => genre1.id,
  'quantity' => 15,
  'artist_id' => artist6.id,
  'buy_price' => 6,
  'sell_price' => 9
})
album21.save()

album22 = Album.new({
  'album_name' => "Songs of Faith and Devotion",
  'genre_id' => genre1.id,
  'quantity' => 17,
  'artist_id' => artist6.id,
  'buy_price' => 10,
  'sell_price' => 15
})
album22.save()

album23 = Album.new({
  'album_name' => "No Roots",
  'genre_id' => genre8.id,
  'quantity' => 9,
  'artist_id' => artist7.id,
  'buy_price' => 10,
  'sell_price' => 15
})
album23.save()

album24 = Album.new({
  'album_name' => "Sunday 8pm",
  'genre_id' => genre8.id,
  'quantity' => 5,
  'artist_id' => artist7.id,
  'buy_price' => 8,
  'sell_price' => 13
})
album24.save()

album25 = Album.new({
  'album_name' => "The Dance",
  'genre_id' => genre8.id,
  'quantity' => 12,
  'artist_id' => artist7.id,
  'buy_price' => 7,
  'sell_price' => 11
})
album25.save()

album26 = Album.new({
  'album_name' => "Signals",
  'genre_id' => genre4.id,
  'quantity' => 16,
  'artist_id' => artist8.id,
  'buy_price' => 10,
  'sell_price' => 15
})
album26.save()

album27 = Album.new({
  'album_name' => "Permanent Waves",
  'genre_id' => genre4.id,
  'quantity' => 11,
  'artist_id' => artist8.id,
  'buy_price' => 10,
  'sell_price' => 15
})
album27.save()

album28 = Album.new({
  'album_name' => "Moving Pictures",
  'genre_id' => genre4.id,
  'quantity' => 7,
  'artist_id' => artist8.id,
  'buy_price' => 11,
  'sell_price' => 16
})
album28.save()

album29 = Album.new({
  'album_name' => "Hemispheres",
  'genre_id' => genre4.id,
  'quantity' => 7,
  'artist_id' => artist8.id,
  'buy_price' => 11,
  'sell_price' => 17
})
album29.save()

album30 = Album.new({
  'album_name' => "Exit... Stage Left",
  'genre_id' => genre4.id,
  'quantity' => 10,
  'artist_id' => artist8.id,
  'buy_price' => 10,
  'sell_price' => 15
})
album30.save()

album31 = Album.new({
  'album_name' => "Perfecto Presents: Travelling",
  'genre_id' => genre5.id,
  'quantity' => 6,
  'artist_id' => artist9.id,
  'buy_price' => 9,
  'sell_price' => 15
})
album31.save()

album32 = Album.new({
  'album_name' => "Perfecto Presents: Another World",
  'genre_id' => genre5.id,
  'quantity' => 7,
  'artist_id' => artist9.id,
  'buy_price' => 10,
  'sell_price' => 18
})
album32.save()

album33 = Album.new({
  'album_name' => "Essential Mix: Fluorescence",
  'genre_id' => genre5.id,
  'quantity' => 3,
  'artist_id' => artist9.id,
  'buy_price' => 7,
  'sell_price' => 14
})
album33.save()

album34 = Album.new({
  'album_name' => "Honey's Dead",
  'genre_id' => genre7.id,
  'quantity' => 14,
  'artist_id' => artist10.id,
  'buy_price' => 10,
  'sell_price' => 15
})
album34.save()

binding.pry
nil
