class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/bookshelf" do
    books = Stat.all.where("currently_reading = ?", true).select('books.*, stats.*').joins(:book)
    books.first.to_json
  end

end

