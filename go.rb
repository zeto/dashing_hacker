require 'sinatra'
require 'open-uri'
require 'json'
require 'net/smtp'
require './lib/hacker_news'

get '/' do
  @hacker_news = HackerNews.new

  erb :index
end

post '/email' do
  @hacker_news = HackerNews.new

  Net::SMTP.start('localhost', 25) do |smtp|
    
    message = ""
    @hacker_news.news_above_median.each do |n|
      message << "#{n['title']} (#{n['points']})\n"
    end

    message << "Mean: #{@hacker_news.mean} Median: #{@hacker_news.median} Mode: #{@hacker_news.mode}\n"

    smtp.send_message message, params['from'], params['to']
  end
  "Email sent!"
end