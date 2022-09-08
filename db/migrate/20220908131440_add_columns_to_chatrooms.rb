class AddColumnsToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :chatrooms, :current_user, :string
    add_column :chatrooms, :provider, :string
  end
end
