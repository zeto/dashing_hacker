require 'open-uri'
require 'json'
require './lib/array'

class HackerNews

  attr_accessor :news

  def initialize
    load
  end

  def load
    news = JSON.parse(open('http://api.ihackernews.com/page').read) rescue 'Cant read Hacker News'
    
    if news.has_key?('items') && news['items'].any?
      @news = news['items']
    end
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

  def above_median
    news.select { |n| n['points'] > median}
  end

  private

  def points
    news.map {|n| n['points']}
  end
end