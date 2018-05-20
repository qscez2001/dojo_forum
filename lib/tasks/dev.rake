namespace :dev do
  task fake: :environment do
    Category.destroy_all
    Post.destroy_all
  end
end