class AddInstagramUsernameToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :instagram_username, :string
  end
end
