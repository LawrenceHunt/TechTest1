require 'sinatra'
require_relative 'lib/key_value.rb'
require_relative 'lib/key_value_array.rb'

class Test1Ruby < Sinatra::Base

set :port, 4000
enable :sessions

  before do
    @key_value_array = KeyValueArray.instance || KeyValueArray.create
  end

  get '/' do
  erb :'index'
  end

  get '/set' do
    key = params.flatten[-2]
    value = params.flatten[-1]
    session[:key] = key
    session[:value] = value
    key_value = KeyValue.new(key, value)
    @key_value_array.array << key_value
    erb :'saved'
  end

  get '/get' do
    key = params[:somekey]
    if key = session[:key]
      @result = session[:value]
    else
      @result = 'FUCK OFF'
    end
    erb :'result'
  end

  #
  # get '/set' do
  #   key = params.flatten[-2]
  #   value = params.flatten[-1]
  #   key_value = KeyValue.new(key, value)
  #   @key_value_array.array << key_value
  #   erb :'saved'
  # end
  #
  # get '/get' do
  #   key = params[:somekey]
  #   if key = session[:key]
  #     @result = session[:value]
  #   else
  #     @result = 'FUCK OFF'
  #   end
  #   erb :'result'
  # end

  run! if app_file == $0
end
