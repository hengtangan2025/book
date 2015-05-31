class AddUserIdAndBookIdToBookUsers < ActiveRecord::Migration
  def change
    add_column :book_users, :book_id, :integer
    add_column :book_users, :user_id, :integer
  end
end
