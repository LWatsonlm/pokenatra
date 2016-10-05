require "sinatra"
require "sinatra/reloader"
require "active_record"

# need connection before artist and song
require_relative 'db/connection'
require_relative 'models/pokemon'

get '/pokemons' do
  @pokemons = Pokemon.all
  erb :"pokemons/index"
end

get '/pokemons/new' do
  erb :"pokemons/new"
end

post '/pokemons' do
  @pokemon = Pokemon.create (params[:pokemon])
  redirect '/pokemons'
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end
