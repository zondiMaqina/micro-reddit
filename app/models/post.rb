class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :title, length: { maximum: 100, message: "input too long to be a title" }
end
