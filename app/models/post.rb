class Post < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  validates :title, presence: true, length: {minimum: 3, maximum: 255}

  def edit_by?(current_post)
    !current_post.nil? && (current_post == self || current_post.admin?)
  end
end
