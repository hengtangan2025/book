require 'json'
require 'net/http'
require 'open-uri'
class StoreController < ApplicationController
  def index
    book = Book.order("created_at DESC, id DESC")
    user = User.find(session[:user_id])
    user.books<<book
    @books = user.books.order("created_at DESC, id DESC").paginate :page => params[:page], :per_page => 1
  end

  def search
    string1 = params[:search_text]
    string =  'https://api.douban.com/v2/book/search?count=20&tag='+string1+'&fields=id,title,author,image,summary,tags,price'
    uri = URI.escape string  
    html_response = nil  
    open(uri) do |http|  
    html_response = http.read  
    end 
    @list=JSON.parse(html_response) 
    @list['books'].each do |book_info|
      title = book_info["title"]
      author = book_info["author"]
      image = book_info["image"]
      price = book_info["price"]
      summary = book_info["summary"]
      tags = book_info["tags"]
      book = Book.create(:title => title, :author => author, :image_url => image, :price => price, :keyword => tags, :description => summary)
      user = User.find(session[:user_id])
      user.books<<book
      @books = user.books.order("created_at DESC, id DESC").paginate :page => params[:page], :per_page => 20
    end
  end

  def sanwen
    response = Net::HTTP.get_response(URI('https://api.douban.com/v2/book/search?count=20&tag=%E6%95%A3%E6%96%87&fields=id,title,author,image,summary,tags,price'))
    @list = JSON.parse(response.body)
    @list['books'].each do |book_info|
      title = book_info["title"]
      author = book_info["author"]
      image = book_info["image"]
      price = book_info["price"]
      summary = book_info["summary"]
      tags = book_info["tags"]
      book = Book.create(:title => title, :author => author, :image_url => image, :price => price, :keyword => tags, :description => summary)
      user = User.find(session[:user_id])
      user.books<<book
      @books = user.books.order("created_at DESC, id DESC").paginate :page => params[:page], :per_page => 20
    end
  end

  def xiaoshuo
    response = Net::HTTP.get_response(URI('https://api.douban.com/v2/book/search?count=20&tag=%E5%B0%8F%E8%AF%B4&fields=id,title,author,image,summary,tags,price'))
    @list = JSON.parse(response.body)
    @list['books'].each do |book_info|
      title = book_info["title"]
      author = book_info["author"]
      image = book_info["image"]
      price = book_info["price"]
      summary = book_info["summary"]
      tags = book_info["tags"]
      book = Book.create(:title => title, :author => author, :image_url => image, :price => price, :keyword => tags, :description => summary)
      user = User.find(session[:user_id])
      user.books<<book
      @books = user.books.order("created_at DESC, id DESC").paginate :page => params[:page], :per_page => 20
    end
  end

  def shige
    response = Net::HTTP.get_response(URI('https://api.douban.com/v2/book/search?count=20&tag=%E8%AF%97%E6%AD%8C&fields=id,title,author,image,summary,tags,price'))
    @list = JSON.parse(response.body)
    @list['books'].each do |book_info|
      title = book_info["title"]
      author = book_info["author"]
      image = book_info["image"]
      price = book_info["price"]
      summary = book_info["summary"]
      tags = book_info["tags"]
      book = Book.create(:title => title, :author => author, :image_url => image, :price => price, :keyword => tags, :description => summary)
      user = User.find(session[:user_id])
      user.books<<book
      @books = user.books.order("created_at DESC, id DESC").paginate :page => params[:page], :per_page => 20
    end
  end

  def mingzhu
    response = Net::HTTP.get_response(URI('https://api.douban.com/v2/book/search?count=20&tag=%E5%90%8D%E8%91%97&fields=id,title,author,image,summary,tags,price'))
    @list = JSON.parse(response.body)
    @list['books'].each do |book_info|
      title = book_info["title"]
      author = book_info["author"]
      image = book_info["image"]
      price = book_info["price"]
      summary = book_info["summary"]
      tags = book_info["tags"]
      book = Book.create(:title => title, :author => author, :image_url => image, :price => price, :keyword => tags, :description => summary)
      user = User.find(session[:user_id])
      user.books<<book
      @books = user.books.order("created_at DESC, id DESC").paginate :page => params[:page], :per_page => 20
    end
  end
end
