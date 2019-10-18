class User < ApplicationRecord
  has_secure_password
  validates :login, presence: true, uniqueness: true, length:
  {minimum: 3, maximum: 72}
end
