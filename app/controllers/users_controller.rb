class UsersController < ApplicationController
    get "/users" do
        stats = Stat.select('books.*, stats.*').joins(:book)
        stats.to_json
    end
end