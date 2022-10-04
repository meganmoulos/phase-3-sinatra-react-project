class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/bookshelf" do
    books = Stat.all.where("currently_reading = ?", true).select('books.*, stats.*').joins(:book)
    books.first.to_json
  end

  get "/saved" do
    saved_articles = SavedArticle.all.select('articles.*').joins(:article)
    saved_articles.to_json
  end
end

