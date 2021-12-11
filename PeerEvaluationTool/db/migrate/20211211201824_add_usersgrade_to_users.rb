class AddUsersgradeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_grade, :string
  end
end
