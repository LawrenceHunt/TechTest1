require 'sinatra'
set :port, 4000

require_relative 'lib/key_value.rb'

class Test1Ruby < Sinatra::Base

  before do
    @key_value_array = KeyValueArray.instance || KeyValueArray.create
  end

  get '/' do
  erb :'index'
  end

  post '/set?:somekey=:somevalue' do
    key = params[:somekey]
    value = params[:somevalue]
    key_value = KeyValue.new(key, value)
    @key_value_array.array << key_value
  end

  get '/get?key=:somekey' do
    key = params[:somekey]
    @key_value_array.find_value(key)
  end

  run! if app_file == $0
end
