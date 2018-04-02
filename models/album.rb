require_relative('../db/sql_runner')

class Album

  attr_accessor :title, :genre, :cost_price, :retail_price, :stock_level, :artist_id
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @cost_price = options['cost_price']
    @retail_price = options['retail_price']
    @stock_level = options['stock_level']
    @artist_id = options['artist_id'].to_i
  end

  def save()
    sql = "INSERT INTO albums
    (title, genre, cost_price,
      retail_price, stock_level,
      artist_id)
      VALUES ($1, $2, $3, $4, $5, $6)
      RETURNING id"
      values = [@title, @genre, @cost_price, @retail_price, @stock_level, @artist_id]
      result = SqlRunner.run(sql, values)
      id = result.first['id']
      @id = id
    end

    def self.delete_all()
      sql = "DELETE FROM albums;"
      SqlRunner.run(sql)
    end

    def delete()
      sql = "DELETE FROM albums
      WHERE id = $1"
      values = [@id]
      SqlRunner.run( sql, values )
    end
    
  end
