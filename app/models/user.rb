class User < ApplicationRecord
  has_secure_token :api_key
  validates :email, presence: true, uniqueness: true
  validates :api_key, uniqueness: true
  validates :password_digest, presence: true
  has_secure_password
end
