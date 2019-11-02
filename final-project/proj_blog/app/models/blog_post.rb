class BlogPost < ApplicationRecord

  #associations
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  #validations
  validates :title, presence: true
  validates :content, presence: true
  validates :user_id, presence: true

  # callbacks
  before_create :reset_likes_counter

  def reset_likes_counter
    self.likes_count = 0
  end

end
