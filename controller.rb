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

get '/search' do
  @artists = Artist.all
  erb(:search)
end

post '/search' do
  puts params
  @albums = Album.find_by_title(params['title'])
  erb(:search_results)
end

post '/albums' do
  @album = Album.new(params)
  @album.save()
  erb(:create)
end

post '/albums/:id/delete' do
  @album = Album.find(params[:id].to_i)
  @album.delete
  erb(:deleted)
end
