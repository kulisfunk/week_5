require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/album.rb'

class TestAlbum < Minitest::Test

  def setup()
    options = {'id' => 1,
    'artist_id' => 1,
    'album_name' => "parachutes",
    'quantity' => 5,
    'buy_price' => 10,
    'sell_price' => 15
  }
    @artist1 = Artist.new("Coldplay")
    @album1 = Album.new(options)

  end

  def test_profit()
    actual = @album1.profit()
    result = 25
    assert_equal(result, actual)
  end
end
