require 'open-uri'
require 'json'
require './lib/array'

class HackerNews

  attr_accessor :news

  def initialize
    load
  end

  def mean
    points.mean
  end

  def median
    points.median
  end

  def mode
    points.mode
  end

  def news_above_median
    news.select {|n| n['points'] > median}
  end

  private

  def points
    news.map {|n| n['points']}
  end

  def load
    json = JSON.parse(open('http://api.ihackernews.com/page').read) rescue 'Cant read Hacker News'
    
    if json.has_key?('items') && json['items'].any?
      @news = json['items']
    end
  end
end