class AddUserIdAndBookIdToBookUsers < ActiveRecord::Migration
  def change
    add_column :user_id, :book_id, :integer
  end
end
