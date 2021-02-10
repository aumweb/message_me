class CreateUserTable < ActiveRecord::Migration[5.2]
  def change
    create_table :user do |t|
    	t.string :username
    	t.string :email
    	t.text :password_digest
    end
  end
end
