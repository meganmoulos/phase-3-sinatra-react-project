class FavoritesController < ApplicationController

    get "/favorites" do
        favorites = Favorite.select('books.*, favorites.*').joins(:book)
        favorites.to_json
      end
    
      delete "/favorites/:id" do
        favorite = Favorite.find(params[:id])
        favorite.destroy
        favorite.to_json
      end
    
      post "/favorites" do
        favorite = Favorite.create(
          star_rating: params[:star_rating],
          user_id: params[:user_id],
          book_id: params[:book_id]
        )
        favorite.to_json
      end
    
end