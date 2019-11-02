class User < ApplicationRecord

  #associations
  has_many :blog_posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  #callbacks
  after_update :update_username_in_comments_and_posts

  def update_username_in_comments_and_posts
    comments = Comment.where(user_id: self.id).all
    comments.each do |c|
      c.user_email = self.email
      c.save
    end
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
