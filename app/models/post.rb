class Post < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  validates :title, presence: true, length: {minimum: 3, maximum: 255}

  def edit_by?(current_user)
    user == current_user || current_user&.admin?
    
  end
end
