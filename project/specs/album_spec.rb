require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/album.rb'
require_relative '../models/genre.rb'
require_relative '../models/artist.rb'

class TestAlbum < Minitest::Test

  def setup()
    album1 = {'id' => 1,
    'artist_id' => 1,
    'album_name' => "parachutes",
    'genre_id' => 1,
    'quantity' => 5,
    'buy_price' => 10,
    'sell_price' => 15
    }
    genre = { 'id' => 1,
    'genre_name' => "Pop"
    }
    @artist1 = Artist.new("Coldplay")
    @album1 = Album.new(album1)
    @genre1 = Genre.new(genre)

  end

  def test_profit()
    actual = @album1.profit()
    result = 25
    assert_equal(result, actual)
  end

  def test_genre()
    actual = @album1.genre()
    result = "Alternative"
    assert_equal(result, actual)
  end

end
