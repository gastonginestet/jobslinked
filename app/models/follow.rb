class Follow < ActiveRecord::Base
  belongs_to :follower, foreign_key: 'follower_id', class_name: 'User'
  belongs_to :following, foreign_key: 'following_id', class_name: 'JobAlert'

  enum status: {
    interested: 0,
    hired: 1,
    rejected: 2
  }
end
