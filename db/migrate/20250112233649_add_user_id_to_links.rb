class AddUserIdToLinks < ActiveRecord::Migration[7.2]
  def change
    add_column :links, :user_id, :integer
  end
end
