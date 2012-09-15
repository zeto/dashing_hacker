require 'open-uri'
require 'json'
require 'lib/array'

module HackerNews
  def self.front_page_news
    hacker_news = JSON.parse(open('http://api.ihackernews.com/page').read) rescue 'Cant read Hacker News'
    
    if hacker_news.has_key?('items') && hacker_news['items'].any?
      hacker_news['items']
    end
  end
end