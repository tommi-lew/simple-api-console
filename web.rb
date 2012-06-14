require 'sinatra'
require 'curb'
require 'Haml'
require 'json'

get '/' do
  haml :result
end

get '/api_request' do
  endpoint_url = "https://api.twitter.com/1/trends/daily.json"
  curl = Curl::Easy.new(endpoint_url)
  curl.perform
  JSON.pretty_generate(JSON.parse(curl.body_str))
end
