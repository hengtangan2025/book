class StoreController < ApplicationController
  def index
    @books = Book.all
  end

  def search
    @books = Book.where(["title = ? or keyword = ? or author = ?", params[:search_text], params[:search_text], params[:search_text]])
  end

  def sanwen
    @books = Books.where(:keyword => '%E6%95%A3%E6%96%87')
  end

  def xiaoshuo
  end

  def shige
  end

  def mingzhu
  end
end
