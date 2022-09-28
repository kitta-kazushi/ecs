require 'sinatra'

class App < Sinatra::Base
  get '/app' do
    'きったきった'
  end
end

run App
