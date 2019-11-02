class Like < ApplicationRecord

  #associations
  belongs_to :user
  belongs_to :blog_post

  #validations
  validates :blog_post_id, presence: true
  validates :user_id, presence: true

  #callbacks
  after_create :increment_likes_on_post
  before_destroy :decrement_likes_on_post

  def increment_likes_on_post
    blog_post = BlogPost.find(self.blog_post_id)
    blog_post.likes_count+=1
    blog_post.save
  end

  def decrement_likes_on_post
    blog_post = BlogPost.find(self.blog_post_id)
    blog_post.likes_count-=1
    blog_post.save
  end

end
