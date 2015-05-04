class StoreController < ApplicationController
  def index
    @books = Book.all
  end

  def search
    @books = Book.where(["title = ? or keyword = ? or author = ?", params[:search_text], params[:search_text], params[:search_text]])
  end
end
