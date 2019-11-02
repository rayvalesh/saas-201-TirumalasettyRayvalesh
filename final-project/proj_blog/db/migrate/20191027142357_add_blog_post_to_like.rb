class AddBlogPostToLike < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :blog_post_id, :integer
  end
end
