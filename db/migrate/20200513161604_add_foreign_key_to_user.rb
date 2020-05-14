class AddForeignKeyToUser < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :chatrooms, :users, column: :receiver_id
    add_foreign_key :chatrooms, :users, column: :sender_id
  end
end
