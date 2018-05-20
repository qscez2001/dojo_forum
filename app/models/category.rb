class Category < ApplicationRecord
  has_many :categoried_posts
  has_many :posts, through: :categoried_posts, dependent: :restrict_with_error
end
