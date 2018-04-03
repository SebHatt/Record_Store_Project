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

    def self.find(id)
      sql = "SELECT * FROM albums
      WHERE id = $1"
      values = [id]
      result = SqlRunner.run(sql ,values).first
      album = Album.new(result)
      return album
    end

    def self.all()
      sql = "SELECT * FROM albums"
      album_data = SqlRunner.run(sql)
      albums = map_items(album_data)
      return albums
    end

    def self.map_items(album_data)
      return album_data.map { |album| Album.new(album) }
    end

    def update()
      sql = "UPDATE albums
      SET (title, genre, cost_price,
        retail_price, stock_level, artist_id)
        VALUES ($1, $2, $3, $4, $5, $6)
        WHERE id = $7"
        values = [@title, @genre, @cost_price, @retail_price, @stock_level, @artist_id, @id]
        SqlRunner.run(sql, values)
      end

      def artist()
        artist = Artist.find(@artist_id)
        return artist
      end

      def self.find_by_title(title)
        sql = "SELECT * FROM
        albums WHERE title like $1"
        title_with_percents = "%" + title + "%"
        values = [title_with_percents]
        sql_result = SqlRunner.run(sql, values)
        album = sql_result.map { |album| Album.new(album) }
        return album[0]
      end

      # def self.stock_level()
      #   if @stock_level <= 5
      #     return "Low Stock! Order More!"
      #   elsif @stock_level > 6  && @stock_level < 10
      #     return "Ok Stock."
      #   elsif @stock_level >= 10
      #     return "High Stock!"
      #   end
      # end

    end
