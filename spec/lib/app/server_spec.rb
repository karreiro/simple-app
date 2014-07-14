# encoding: utf-8

require 'spec_helper'
require 'app/server'
require 'rack/test'

describe App::Server do
  include Rack::Test::Methods

  it 'should return be redirected' do
    get '/'

    expect(last_response).to be_redirection
  end

  it 'should return a list of movies' do
    get '/movies'

    expect(last_response).to be_ok
    expect(last_response.body.include? 'Dark City').to be true
    expect(last_response.body.include? 'Sin City').to be true
  end

  it 'should show details a movie' do
    get '/movies/4'

    expect(last_response.body.include? 'Sin City').to be true
    expect(last_response.body.include? '2005').to be true
    expect(last_response.body.include? 'BluRay').to be true
    expect(last_response.body.include? '720p').to be true
    expect(last_response.body.include? 'h264').to be true
    expect(last_response.body.include? 'AC3').to be true
    expect(last_response.body.include? 'SEPTiC').to be true
  end

end

def app
  App::Server.set(:root, File.expand_path(File.join(Dir.pwd, 'lib')))
end