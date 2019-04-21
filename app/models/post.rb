class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validates :content, minimum: { is: 100 } 
end
