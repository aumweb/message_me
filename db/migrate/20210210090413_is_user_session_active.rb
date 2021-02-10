class IsUserSessionActive < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :is_user_session_active, :boolean, default: false
  end
end
