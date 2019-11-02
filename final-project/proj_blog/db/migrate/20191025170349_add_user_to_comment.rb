class AddUserToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :user_id, :integer
    add_column :comments, :user_email, :string
  end
end
