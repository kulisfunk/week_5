require_relative('../db/sql_runner')
require_relative('album.rb')

class Genre

  attr_reader :id
  attr_accessor :genre_name, :album_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @genre_name = options['genre_name']
  end

  def save()
    sql = "INSERT INTO genres
    (
      genre_name
    )
    VALUES
    (
      $1
    )
    RETURNING id;
    "
    values = [@genre_name]
    genre_data = SqlRunner.run(sql, "genre_save", values)
    @id = genre_data.first['id'].to_i
  end

  def delete()
    sql = "DELETE FROM genres WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, "delete", values )
  end

  def self.delete_all()
    sql = "DELETE FROM genres"
    SqlRunner.run( sql, "delete_all", [] )
  end

  def self.all()
    sql = "SELECT * FROM genres ORDER BY genres.genre_name"
    values = []
    genres = SqlRunner.run( sql, "all", values )
    result = genres.map { |genre| Genre.new( genre ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM genres WHERE id = $1"
    values = [id]
    genre = SqlRunner.run( sql, "find", values )
    result = Genre.new( genre.first )
    return result
  end
end
