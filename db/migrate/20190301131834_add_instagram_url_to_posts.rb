class AddInstagramUrlToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :instagram_url, :string
  end
end
