require('sinatra')
require('sinatra/contrib/all')
require_relative('models/album')
require_relative('models/artist')


get '/' do
  erb(:home)
end

get '/albums' do
  @albums = Album.all
  erb(:index)
end

get '/albums/new' do
  @artists = Artist.all
  erb (:new)
end

get '/albums/:id' do
  @album = Album.find(params[:id].to_i)
  erb(:show)
end

post '/albums' do
  @album = Album.new(params)
  @album.save()
  erb(:create)
end
