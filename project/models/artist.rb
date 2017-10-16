require_relative('../db/sql_runner')
require_relative('album.rb')

class Artist

  attr_reader :id
  attr_accessor :artist_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @artist_name = options['artist_name']
  end

  def save()
    sql = "INSERT INTO artists
    (
      artist_name
    )
    VALUES
    (
      $1
    )
    RETURNING id;
    "
    values = [@artist_name]
    artist_data = SqlRunner.run(sql, "save_data", values)
    @id = artist_data.first()['id'].to_i
  end

  def delete()
    sql = "DELETE FROM artists
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, "delete", values )
  end

  def self.delete_all()
    sql = "DELETE FROM artists;"
    SqlRunner.run(sql, "delete_all", [] )
  end

  def self.all()
    sql = "SELECT * FROM artists ORDER BY artists.artist_name"
    values = []
    artists = SqlRunner.run( sql, "all", values )
    result = artists.map { |artist| Artist.new( artist ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [@id]
    artist = SqlRunner.run( sql, "find", values )
    result = Artist.new( artist.first )
    return result
  end

  def albums()
    sql = "SELECT * FROM albums WHERE albums.artist_id = $1"
    values = [@id]
    album = SqlRunner.run( sql, "find", values )
    result = album.map { |album| Album.new( album ) }
    return result
  end

end
