require 'sinatra'
require 'open-uri'
require 'json'

get '/' do
  @news = HackerNews.front_page_news
end