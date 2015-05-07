class StoreController < ApplicationController
  def index
    @books = Book.all
    @books = Book.paginate :page => params[:page], :per_page => 5
  end

  def search
    @books = Book.where(["title = ? or keyword = ? or author = ?", params[:search_text], params[:search_text], params[:search_text]])
    @books = Book.paginate :page => params[:page], :per_page => 5
  end

  def sanwen
  end

  def xiaoshuo
  end

  def shige
  end

  def mingzhu
  end
end
