class AddSenderRecipientToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :sender, index: true
    add_reference :chatrooms, :recipient, index: true
  end
end
