class NewsController < ApplicationController

  def index
    @news = HTTParty.get('https://newsapi.org/v2/top-headlines?sources=nfl-news&apiKey=85440dc80d7a4e59bbad4674ae34f825')
    @all_articles = @news["articles"]
  end

  def show
      @news = HTTParty.get('https://newsapi.org/v2/top-headlines?sources=nfl-news&apiKey=85440dc80d7a4e59bbad4674ae34f825')
      @all_articles = @news["articles"]
      @all_articles.each do |article|
        @article = article
      end
  def by_player
    @playernews = HTTParty.get('https://api.fantasydata.net/v3/nfl/stats/json/NewsByPlayerID/732', headers: {"Ocp-Apim-Subscription-Key" => "1d82e09de7ea421d9659a843bf18be31"})
  end
  end
end
