class Comment < ApplicationRecord

  #associations
  belongs_to :user
  belongs_to :blog_post

  #validations
  validates :content, presence: true
  validates :user_email, presence: true
  validates :blog_post_id, presence: true
  validates :user_id, presence: true

end
