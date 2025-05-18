class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :username, :body, presence: true
  validates :username, length: { minimum: 3, maximum: 12 }
  validates :body, length: { maximum: 100 }
end
