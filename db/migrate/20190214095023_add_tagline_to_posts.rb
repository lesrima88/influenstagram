class AddTaglineToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :tagline, :string
  end
end
