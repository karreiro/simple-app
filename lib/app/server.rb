# encoding: utf-8

require 'sinatra'
require 'sinatra/reloader'
require 'config/initializer'

module App
  class Server < Sinatra::Base

    get '/' do
      redirect '/movies'
    end

    get '/movies' do
      @movies = Movie.all
      erb :index
    end

    get '/movies/:id' do
      @movie = Movie.first(id: params[:id])
      if @movie
        erb :show
      else
        redirect '/movies?not_found=true'
      end
    end

  end
end
