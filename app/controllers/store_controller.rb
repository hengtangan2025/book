class StoreController < ApplicationController
  def index
    @books = Book.all
    @books = Book.paginate :page => params[:page], :per_page => 5
  end

  def search
    @books = Book.where(["title = ? or keyword = ? or author = ?", params[:search_text], params[:search_text], params[:search_text]]).paginate :page => params[:page], :per_page => 5 
  end

  def sanwen
    response = Net::HTTP.get_response(URI('https://api.douban.com/v2/book/search?q=%E6%95%A3%E6%96%87&fields=title,author,image,price'))
    @list = JSON.parse(response.body)
    @s = @list['books']
  end

  def xiaoshuo
  end

  def shige
  end

  def mingzhu
  end
end
