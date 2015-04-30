class Store < ActiveRecord::Base
  def search
    @books = Book.where(params[:title] = "search_text")
  end
end