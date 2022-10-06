class BooksController < ApplicationController
    
  get "/books" do
    books = Book.all
    books.to_json
  end

  post "/books" do
    book = Book.create(
      title: params[:title],
      author: params[:author],
      page_count: params[:page_count],
      publication_year: params[:publication_year],
      library_availability: params[:library_availability],
      image_url: params[:image_url]
      )
    book.to_json
  end      

end