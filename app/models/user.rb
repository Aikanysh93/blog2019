class User < ApplicationRecord
  has_secure_password
  has_many :posts
  validates :login, presence: true, uniqueness: true, length:
  {minimum: 3, maximum: 72}
end
