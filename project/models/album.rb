require_relative('../db/sql_runner')
require_relative('artist.rb')

class Album
  attr_reader :id
  attr_accessor :album_name, :quantity, :artist_id, :buy_price, :sell_price

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @album_name = options['album_name']
    @quantity = options['quantity']
    @artist_id = options['artist_id'].to_i
    @buy_price = options['buy_price'].to_i
    @sell_price = options['sell_price'].to_i
  end

  def save()
    sql = "INSERT INTO albums
    (
      album_name,
      quantity,
      artist_id,
      buy_price,
      sell_price
    )
    VALUES
    (
      $1, $2, $3, $4, $5
    )
    RETURNING id;
    "
    values = [@album_name, @quantity, @artist_id, @buy_price, @sell_price]
    album_data = SqlRunner.run(sql, "save", values)
    @id = album_data.first()['id'].to_i
  end

  def delete()
    sql = "DELETE FROM albums
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, "delete", values )
  end

  def self.delete_all()
    sql = "DELETE FROM albums"
    SqlRunner.run( sql, "delete_all", [] )
  end

  def self.all()
    sql = "SELECT * FROM albums ORDER BY albums.artist_id"
    values = []
    albums = SqlRunner.run( sql, "all", values )
    result = albums.map { |album| Album.new( album ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM albums WHERE id = $1"
    values = [id]
    album = SqlRunner.run( sql, "find", values )
    result = Album.new( album.first )
    return result
  end

  # def to_s()
  #   return "Student: #{@id}  #{@first_name} #{@last_name},  Age:#{@age}
  #   from House #{house.house_name}"
  # end

  def artist()
    sql = "SELECT * FROM artists WHERE id = $1;"
    values = [@artist_id]
    artists = SqlRunner.run(sql, "artists", values)
    return Artist.new(artists.first).artist_name
  end

  def album_buy()
    return "#{@buy_price}"
  end

  def album_sell()
    return "#{@sell_price}"
  end

  def album_name()
    return "#{@album_name}"
  end

  def quantity()
    return "#{@quantity}"
  end

  def artist_name()
    return "#{@artist_name}"
  end

  def profit()
    total = ((@sell_price - @buy_price) * @quantity)
    return total
  end





  # def projected_profit()
  #
  # end
end
