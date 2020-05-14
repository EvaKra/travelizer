class ChangeRecipientInChatroomToReceiver < ActiveRecord::Migration[6.0]
  def change
    rename_column :chatrooms, :recipient_id, :receiver_id
  end
end
