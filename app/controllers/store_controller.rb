class StoreController < ApplicationController
  def index
    @books = Book.all
  end
end
