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
  text = File.open('./README.md') { |f| f.read }
  @html = Maruku.new(text).to_html

  erb :index
end

match '/sms/send/:to/?' do
  url = params[:url]
  to = "+"+params[:to]

  TwilioSMS.send(to, url)
end

match '/sms/get/?' do
  TwilioSMS.get(params)
end