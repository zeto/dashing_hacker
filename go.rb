require 'sinatra'
require 'open-uri'
require 'json'
require './lib/hacker_news'

get '/' do
  @hacker_news = HackerNews.new

  erb :index
end