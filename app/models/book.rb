class Book < ActiveRecord::Base
  has_many :book_user
  has_many :users, :through => :book_user
  has_many :line_items
end
