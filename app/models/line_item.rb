class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :book
  belongs_to :cart
  belongs_to :user

  def total_price
    book.price * quantity
  end
end
