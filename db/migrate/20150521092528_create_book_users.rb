class CreateBookUsers < ActiveRecord::Migration
  def change
    create_table :book_users do |t|

      t.timestamps null: false
    end
  end
end
