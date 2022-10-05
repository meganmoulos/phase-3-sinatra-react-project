class ArticlesController < ApplicationController
    get "/articles" do
        articles = Article.all
        articles.to_json
    end
end