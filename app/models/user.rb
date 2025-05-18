class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments

  validates :username, :email, :password, presence: true
  validates :username, length: { minimum: 3, maximum: 12 }
  validates :email, length: { minimum: 7 }
end
