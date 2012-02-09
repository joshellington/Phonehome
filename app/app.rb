require 'rubygems'
require 'sinatra'
require './config/init'

#
# Before any route is run
before do
  @path = request.env['SCRIPT_NAME']
end

#
# Routes

match '/' do
  erb :index
end

match '/send/:number/?' do
  url = params[:url]
  number = "+"+params[:number]

  t = Tropo::Generator.new

  t.call(:to => number, :network => "SMS")
  t.say(:value => url)

  pp t.response

  t.response
end