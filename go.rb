require 'sinatra'
require 'open-uri'
require 'json'
require './lib/hacker_news'

get '/' do
  @news = HackerNews.front_page_news
  @points = @news.map {|n| n['points']} 
  @mean = @points.mean
  @median = @points.median
  @mode = @points.mode

  @news_above_median = @news.select { |n| n['points'] > @median}

  erb :index
end