class Post < ApplicationRecord
  belongs_to :user
  has_many :categoried_posts
  has_many :categories, through: :categoried_posts, dependent: :destroy
end
