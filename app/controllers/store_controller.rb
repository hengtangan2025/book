class StoreController < ApplicationController
  def index
    @books = Book.all
  end

  def search
    @books = Book.where(params[:title] = 'search_text')
  end

  def classify 
  end
end
