class JobAlert < ApplicationRecord
  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower

  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
end
