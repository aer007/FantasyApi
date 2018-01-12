class GamesController < ApplicationController
  def index
    news = HTTParty.get('https://newsapi.org/v2/top-headlines?sources=nfl-news&apiKey=85440dc80d7a4e59bbad4674ae34f825')
    @all_articles = news["articles"]
  end
end
